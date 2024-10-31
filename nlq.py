import os
import re
import pyodbc
from openai import AzureOpenAI

# Initialize Azure OpenAI client
client = AzureOpenAI(
    api_key = os.getenv("API_KEY_OPENAI"),
    api_version = os.getenv("API_VERSION_OPENAI"),
    azure_endpoint = os.getenv("API_ENDPOINT_OPENAI")
)

deployment_name = os.getenv("API_NAME_MODEL") # Your deployment name for the model

def NLQ2SQL(natural_language_query):
	db_schema = """
		Tables:
		1. Employees (code INT, first_name VARCHAR(100), last_name VARCHAR(100), city_id INT, age INT, salary DECIMAL(10, 2), position VARCHAR(100), years_in_company INT)
		2. Cities (id INT, name VARCHAR(100))
		Relations:
		- Employees.city_id reference to Cities.id
		"""
	#print("NLQ:", natural_language_query)
	# Translate natural language to SQL
	sql_query = translate_nl_to_sql(natural_language_query,db_schema)
	#Parsing of the text query SQL
	match = re.search(r'\$BEGINSQL(.*?)\$ENDSQL', sql_query, re.DOTALL)
	# Extract and clean the SQL query
	if match:
		sql_query = match.group(1).strip()    
		print("SQL:", sql_query, "\n")	
	else:
		print("No SQL query found.")

	# Execute the generated SQL query
	rows, columns = execute_sql_query(sql_query)
	html_table = generate_html_table(rows, columns)
	print(html_table)
	return html_table, sql_query	

# Function to translate natural language to SQL
def translate_nl_to_sql(text_query, db_schema):
    response = client.completions.create(
        model=deployment_name,
        prompt = f"""
        You are a assitent that converts natural language queries to SQL.
        Consider the following database schema:
    
        {db_schema}
    
        Generates a SQL query for the following request in natural language:
        "{text_query}"
		returns the SQL query between $BEGINSQL and $ENDSQL
        """,
        temperature=0,
        max_tokens=64
    )
    #print(response) # debug
    sql_query = response.choices[0].text.strip()
    return sql_query

# Function to execute SQL query against the database
def execute_sql_query(sql_query):
    # Database connection configuration
    server = os.getenv("AZURE_SQL_SERVER")
    database = os.getenv("AZURE_SQL_DB_NAME")
    username = os.getenv("AZURE_SQL_USER")
    password = os.getenv("AZURE_SQL_PASSWD")
    driver = '{'+os.getenv("AZURE_SQL_DRIVER_SQL_SERVER")+'}'

    # Connect to Azure SQL Database
    connection = pyodbc.connect(
        f'DRIVER={driver};SERVER=tcp:{server},1433;DATABASE={database};UID={username};PWD={password};Encrypt=Yes;TrustServerCertificate=no;Connection Timeout=30'
    )
    
    cursor  = connection.cursor()    
    try:
        cursor.execute(sql_query)
        if cursor.description:  # If there is a result set (e.g., SELECT query)
            rows = cursor.fetchall()
            columns = [column[0] for column in cursor.description]  # Get column names
            return rows, columns
        else:
            print("Query executed successfully.")
        connection.commit()
    except Exception as e:
        print("Error executing query:", e)
    finally:
        cursor.close()
        connection.close()

def generate_html_table(rows, columns):
    """
    Generates an HTML table from the rows and columns of a SQL query.
    """
    html_table = "<div class='table-responsive'><table class='table table-striped'>"
    html_table += "  <tr>"
    for column in columns:
        html_table += f"    <th>{column}</th>"
    html_table += "  </tr>"

    for row in rows:
        html_table += "  <tr>"
        for cell in row:
            html_table += f"    <td>{cell}</td>"
        html_table += "  </tr>"

    html_table += "</table></div>"
    return html_table