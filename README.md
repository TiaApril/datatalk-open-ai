# DataTalk - SQL Queries for Non-technical Users

[EN] DataTalk is an AI-powered conversational interface that allows non-technical users to interact with large data sets using natural language. Users can ask questions about their data, such as “What is sales performance this month?” or “What are our best-selling products?” and the AI ​​responds by generating clear visualizations and summaries.

[ES] DataTalk es una interfaz conversacional impulsada por IA que permite a usuarios no técnicos interactuar con grandes conjuntos de datos utilizando lenguaje natural. Los usuarios pueden hacer preguntas sobre sus datos, como "¿Cuál es el rendimiento de ventas este mes?" o "¿Cuáles son nuestros productos más vendidos?", y la IA responde generando visualizaciones claras y resúmenes.


## Presentation (file PDF):
[Presentation-DataTalk.pdf](https://github.com/user-attachments/files/17596198/Presentation-DataTalk.pdf)

## Table of Contents
- [Our Inspiration](#our-inspiration)
- [What it does](#what-it-does)
- [Requirements ](#requirements)
- [Usage](#usage)
- [Technologies used](#technologies-used)
- [Architecture](#architecture)
- [Acknowledgements](#acknowledgements)

## Our Inspiration
Today, many non-technical users face a significant barrier when trying to access and interpret data independently. Whether it’s in sales, HR, or operations, these team members often need quick answers but lack the technical skills to retrieve and analyze complex data. This creates dependencies on data or IT teams, causing bottlenecks, delays, and sometimes incomplete insights. For instance, when a sales associate wants to know, ‘What were last month’s best-selling products?’ they’re often unable to access that data themselves without SQL knowledge or a business intelligence tool.

These limitations can make data-driven decision-making slow and inaccessible for non-technical users, restricting their ability to make informed choices when they need it most.

## What it does
DataTalk is an AI-powered conversational interface designed to remove these technical barriers. Instead of requiring SQL knowledge, DataTalk allows users to simply type in their question in natural language—like ‘What’s our sales performance this month?’—and receive clear, visual insights instantly.

With DataTalk, users can make informed, data-driven decisions on the spot, without waiting for support from data specialists. Plus, to maintain transparency, DataTalk displays the underlying SQL query for each result, helping users understand exactly how the data was retrieved. In addition, a built-in monitoring system tracks data processing token usage and sends alerts if costs start to rise, allowing organizations to manage expenses proactively. This combination of accessibility, transparency, and cost control makes DataTalk an essential tool for democratizing data access across teams.

## Requirements

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install openai==1.52.2
pip install pyodbc==5.2.0
pip install Flask==2.2.2
pip install gunicorn
pip install Werkzeug==2.2.2
```

## Usage

```python
python app.py
```

## Technologies used:
- Python
- Flask
- Azure OpenAI
- Azure SQL Database (SQL Server)
- Azure App Service
- HTML, CSS (Bootstrap/Font Awesome), Javascript (JQuery/Ajax)

## Architecture
![ArquitecturaAI](https://github.com/user-attachments/assets/ac3a04f1-7397-4aaf-b271-c972e007f42d)

## Acknowledgements

We extend our gratitude to CodigoFacilito, Women in Cloud and Microsoft for organizing and hosting this Hackathon AI challenge. 
We appreciate their support and dedication to empowering individuals and communities through technology.
