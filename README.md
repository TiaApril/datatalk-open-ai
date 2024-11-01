# DataTalk - SQL Queries for Non-technical Users

[EN] DataTalk is an AI-powered conversational interface that allows non-technical users to interact with large data sets using natural language. Users can ask questions about their data, such as “What is sales performance this month?” or “What are our best-selling products?” and the AI ​​responds by generating clear visualizations and summaries.

[ES] DataTalk es una interfaz conversacional impulsada por IA que permite a usuarios no técnicos interactuar con grandes conjuntos de datos utilizando lenguaje natural. Los usuarios pueden hacer preguntas sobre sus datos, como "¿Cuál es el rendimiento de ventas este mes?" o "¿Cuáles son nuestros productos más vendidos?", y la IA responde generando visualizaciones claras y resúmenes.

## Presentation (file PDF):
[Presentation-DataTalk.pdf](https://github.com/user-attachments/files/17596198/Presentation-DataTalk.pdf)

## Requirements:

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install openai==1.52.2
pip install pyodbc==5.2.0
pip install Flask==2.2.2
pip install gunicorn
pip install Werkzeug==2.2.2
```

## Usage:

1. Run Application Web:
```python
python app.py
```
2. Settings environment variables (application settings - App Service):

API_ENDPOINT_OPENAI=https://{URL_Generate_Service}.openai.azure.com/
API_KEY_OPENAI={Token}
API_NAME_MODEL={Model_Name}
API_VERSION_OPENAI=2024-08-01-preview
AZURE_SQL_DB_NAME={Name_Database}
AZURE_SQL_DRIVER_SQL_SERVER=ODBC Driver 17 for SQL Server
AZURE_SQL_SERVER={Name_Service_Azure}.database.windows.net
AZURE_SQL_USER={Username_DB}
AZURE_SQL_PASSWD={Password_DB}
   
## Technologies used:
- Python: It is the programming language used for the general code of the application. It contains all the functional logic of the project idea.
- Flask: Framework that generates the web and API wrapper.
- Azure OpenAI: Service offers industry-leading coding and language AI models that you can fine-tune to your specific needs for a variety of use cases.
- Azure SQL Database: It is the database engine that creates an instance of SQL Server.
- Azure App Service: Fully managed platform as a service (PaaS) for developers. Provides a framework for developing and running apps in the cloud. Para este caso el aplicativo Flask (Python).
- HTML, CSS (Bootstrap/Font Awesome), Javascript (JQuery/Ajax): Web technologies that were used to generate the front-end of the web application.

For this case the following OpenAI model was used:
   Azure OpenAI Service Version: 2024-08-01-preview 
   Model Name: gpt-35-turbo
   Model Version: 0301

## Architecture:
![ArquitecturaAI](https://github.com/user-attachments/assets/ac3a04f1-7397-4aaf-b271-c972e007f42d)

## Database Diagram:

Attached is the diagram containing the database schema. The "dbScrpt" folder contains the SQL script "ScriptDatabase.sql" that contains the data inserted into the SQl Server database.

Type of Relationship between Tables:

1 to N, (One to many)
A city has many employees, and an employee belongs to only one city.

![DB_Scheme](https://github.com/user-attachments/assets/f365485a-d95d-43b6-806b-a0472367a1b0)

- Some example custom queries:

[NLQ #1 - ES] 
Dame los empleados que tengan nombre que empiecen con C y J y su edad mayor a 30.  Me retorna la ciudad del empleado.

[NLQ #2 - ES]
Cuentame cuentos empleados con cargo de Tester tenemos.

[NLQ #3 - EN]
Calculates the total balance earned by an employee during their years in the company. Where each year has 12 months. Returns the first name, last name and total calculated balance. 

[NLQ #4 - EN]
Tell me which position earns the most salary, sort by salary. But don't include "Gerente de Proyectos"

##  Team Members:
This project was developed by a passionate team of programming and AI enthusiasts. For more information about each team member, visit their profiles:

>_ Carlos Gonzalez
   Linkedin: <a href="https://www.linkedin.com/in/gozcode/">https://www.linkedin.com/in/gozcode/</a>
>_ Tiana Aprianti
   Linkedin: <a href="https://www.linkedin.com/in/tiana-aprianti/">https://www.linkedin.com/in/tiana-aprianti/</a>
   
## Acknowledgements:

We extend our gratitude to CodigoFacilito, Women in Cloud and Microsoft for organizing and hosting this Hackathon AI challenge. We appreciate their support and dedication to empowering individuals and communities through technology.
