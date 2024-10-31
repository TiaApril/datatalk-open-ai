import os

from flask import (Flask, redirect, render_template, request,
                   send_from_directory, url_for, jsonify)
   
from nlq import (translate_nl_to_sql, execute_sql_query, generate_html_table, NLQ2SQL)

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')	
	
@app.route('/api/v1/receive-text', methods=['POST'])
def receive_json():
    # Verify that the content is JSON
    if request.is_json:
        # Get the JSON sent in the request body
        data = request.get_json()
        message = data.get("message", "")
        resultHTMLtable, sqlResult = NLQ2SQL(message)
        # Process the message (here we are just printing it and returning it in the response)
        response = {            
			"sql_queries": sqlResult,
			"received_message": resultHTMLtable,
            "status": "success"
        }
        return jsonify(response), 200
    else:
        return jsonify({"error": "Content must be JSON"}), 400	
		
if __name__ == '__main__':
    app.run()