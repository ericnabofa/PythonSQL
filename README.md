# AireLogic Data Analytics Projects

## Overview
This repository contains four innovative projects showcasing the application of data analytics to solve real-world challenges. These projects are designed to demonstrate a variety of skills in data analysis, visualization, and engineering.

### Projects
1. **Data Quality Checker**: A tool for identifying and reporting data quality issues.
2. **Healthcare Analytics Dashboard**: A dashboard for monitoring healthcare resource usage and treatment efficiency.
3. **Public Research Data Visualizer**: A visual analytics tool for public research datasets.
4. **Predictive Maintenance for Supply Chain**: A system to predict equipment failures based on usage data and historical failure records.

## Project Setup

### Prerequisites
1. Install [Python 3.9+](https://www.python.org/).
2. Install [PostgreSQL](https://www.postgresql.org/).
3. Install [VS Code](https://code.visualstudio.com/) with the Python and Git extensions.
4. Install Git and create a GitHub account.
5. Set up a local PostgreSQL database for each project.

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/ericnabofa/PythonSQL.git
   cd PythonSQl
   ```

2. Set up a Python virtual environment:
   ```bash
   python -m venv env
   source env/bin/activate  # On Windows: .\env\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Set up the database:
   - Run the provided SQL scripts in the `sql_scripts` folder to create and populate the tables for each project.

5. Start the Flask application (if applicable):
   ```bash
   python app.py
   ```

6. Access the application in your browser at `http://127.0.0.1:5000`.

---

## Project Details

### 1. Data Quality Checker
**Objective**: Identify missing, duplicate, or inconsistent data within customer and sales records.

#### Key Features:
- **Validation Rules**: Check for missing values, incorrect data formats, and duplicates.
- **Summary Dashboard**: Display issues found in the dataset.

#### Mock Data:
- **Customer Data**: 20 records of customer information.
- **Sales Data**: 20 records of sales transactions.

---

### 2. Healthcare Analytics Dashboard
**Objective**: Provide insights into hospital resource usage and treatment efficiency.

#### Key Features:
- **Resource Monitoring**: Analyze availability and maintenance of hospital resources.
- **Treatment Analysis**: Examine the costs and types of treatments provided.

#### Mock Data:
- **Treatments Table**: 20 records of treatments provided to patients.
- **Hospital Resources Table**: 20 records of resources and their maintenance status.

---

### 3. Public Research Data Visualizer
**Objective**: Visualize and explore public research datasets by region, category, and year.

#### Key Features:
- **Interactive Charts**: Generate bar charts and line graphs.
- **Filtering**: Drill down into specific regions, categories, or years.

#### Mock Data:
- **Research Data Table**: 20 records of research-related metrics.

---

### 4. Predictive Maintenance for Supply Chain
**Objective**: Predict equipment failures and identify patterns in operational data.

#### Key Features:
- **Usage Monitoring**: Track usage hours and maintenance history.
- **Failure Analysis**: Analyze causes and trends of equipment failures.

#### Mock Data:
- **Usage Stats Table**: 20 records of equipment usage.
- **Failure Records Table**: 20 records of equipment failures.

---

## Project Workflow
1. **Data Ingestion**: Import data from PostgreSQL tables.
2. **Data Processing**: Use Python scripts to clean, analyze, and transform the data.
3. **Visualization**: Generate visual insights using libraries like Matplotlib and Plotly.
4. **Reporting**: Present findings in a user-friendly web dashboard.

---

## Tools and Technologies
- **Backend**: Python, Flask
- **Database**: PostgreSQL
- **Visualization**: Matplotlib, Plotly, Pandas
- **Development**: Git, VS Code

---

## Deployment
1. Deploy locally using Flask as described above.
2. To deploy on a live server (e.g., Heroku):
   - Set up a Heroku account.
   - Push the repository to Heroku and set environment variables for the database connection.
   - Access the live application through the Heroku link.

---

## Next Steps
- **Enhancements**: Add machine learning models for predictive analytics.
- **Integration**: Connect to live datasets for real-time updates.
- **Testing**: Implement unit and integration tests.

---

## Contact
For questions or collaboration, feel free to reach out through the repository's issue tracker or contact directly at ericnabofa@gmail.com

