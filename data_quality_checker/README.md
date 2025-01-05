# Automated Data Quality Checker

## Overview
The Automated Data Quality Checker is a Python-based tool designed to assess the quality of data in an SQL database. It identifies issues such as null values, duplicates, and outliers and generates a detailed report with recommendations for cleaning.

## Features
- **Null Value Detection**: Identify missing values in critical columns.
- **Duplicate Detection**: Detect duplicate entries in `customer_id` or `sale_id`.
- **Outlier Detection**: Flag extreme sales values in the `amount` column.
- **Report Generation**: Create a comprehensive report in CSV or Excel format.
- **Command-Line Execution**: Run the script from the command line for ease of use.

## Project Structure
```
data_quality_checker/
│
├── main.py                  # Main script to run the project
├── database/
│   ├── db_setup.sql         # SQL script to create and populate tables
│   └── db_connection.py     # Script to connect to the database
├── analysis/
│   ├── data_quality.py      # Contains the logic for quality checks
│   └── report_generator.py  # Script to generate the report
├── reports/                 # Folder to store generated reports
│   └── (Generated CSV/Excel files will be saved here)
├── tests/
│   └── test_data_quality.py # Optional: Unit tests for quality checker
└── requirements.txt         # List of Python dependencies
```

## Setup

### Prerequisites
1. **Python 3.x**: Ensure Python is installed on your system.
2. **PostgreSQL**: Use PostgreSQL for the database.
3. **Required Python Libraries**:
    - `pandas`
    - `sqlalchemy`
    - `openpyxl`
    - `psycopg2`

### Installation
1. Clone the repository:
   ```bash
   git clone <repository_url>
   cd data_quality_checker
   ```
2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```
3. Set up the database:
   - Open `database/db_setup.sql`.
   - Execute the script in your SQL client to create and populate the database tables.
4. Update `db_connection.py` with your database credentials:
   ```python
   user = "your_user"
   password = "your_password"
   host = "localhost"
   port = "5432"
   database = "your_database"
   ```

## Usage
1. Run the script:
   ```bash
   python main.py
   ```
2. The script will:
   - Connect to the database.
   - Check for data quality issues.
   - Generate a report in the `reports/` folder.

## Example Output
The generated report will include:
- Table name.
- Type of check (null, duplicate, or outlier).
- Issue details.

Example output file: `reports/data_quality_report.xlsx`

## Extending the Tool
1. Add new tables or checks in `data_quality.py`.
2. Visualize data quality issues using Streamlit or Matplotlib for interactive dashboards.
3. Expand compatibility to handle other databases (e.g., MySQL).

## Testing
Add unit tests for quality checks in the `tests/` folder. Use pytest or unittest for automated testing.

## License
This project is open-source and available under the [MIT License](LICENSE).

## Contributions
Contributions are welcome! Please fork the repository and submit a pull request for review.

---

### Need Help?
Feel free to reach out or raise an issue in the repository. Happy coding!

