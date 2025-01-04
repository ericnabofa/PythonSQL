# Healthcare Analytics Dashboard

This repository contains the source code for a healthcare analytics dashboard built using **Streamlit**. The dashboard visualizes patient demographics, treatment costs, outcomes, and admission trends using data from a PostgreSQL database.

## Features

- **Patient Demographics**: Displays the number of patients and average age grouped by medical conditions.
- **Average Treatment Costs**: Shows the average cost of different treatments.
- **Outcome Distribution**: Visualizes the distribution of patient outcomes.
- **Admission Trends**: Plots the number of patient admissions over time.

---

## Installation

Follow the steps below to set up the project locally:

### Prerequisites
- Python 3.8 or higher
- PostgreSQL installed and running

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/healthcare-analytics-dashboard.git
   cd healthcare-analytics-dashboard
   ```

2. **Create a Virtual Environment**:
   ```bash
   python -m venv venv
   ```
   Activate the virtual environment:
   - On Windows:
     ```bash
     venv\Scripts\activate
     ```
   - On macOS/Linux:
     ```bash
     source venv/bin/activate
     ```

3. **Install Dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

4. **Set Up the Database**:
   - Start PostgreSQL and create the database:
     ```sql
     CREATE DATABASE healthcare_analytics;
     ```
   - Populate the database:
     ```bash
     psql -U postgres -d healthcare_analytics -f data/mock_data.sql
     ```

5. **Run the Application**:
   ```bash
   streamlit run app.py
   ```
   Access the application at `http://localhost:8501`.

---

## Directory Structure

```
healthcare-analytics-dashboard/
├── data/
│   └── mock_data.sql             # SQL script to populate the database
├── src/
│   ├── db_connection.py          # Handles database connections
│   ├── queries.py                # Contains SQL query functions
├── app.py                        # Streamlit application entry point
├── requirements.txt              # Python dependencies
└── README.md                     # Project documentation
```

---

## Customizations

### Adding CSS for Styling
The app uses custom CSS to enhance the visual appearance of the Streamlit dashboard. You can modify the CSS in the `app.py` file:

```python
st.markdown("""
<style>
body {
    background-color: #f7f9fc;
    font-family: 'Arial', sans-serif;
}
.section-header {
    font-size: 24px;
    color: #2c3e50;
    margin-bottom: 10px;
}
.dashboard-text {
    font-size: 16px;
    color: #34495e;
    margin-bottom: 20px;
}
</style>
""", unsafe_allow_html=True)
```

---

## Troubleshooting

### Common Issues

1. **Error: `FATAL: password authentication failed for user "username"`**
   - Ensure the PostgreSQL username, password, and database details in `db_connection.py` are correct.

2. **x-axis Labels Overlap in Charts**:
   - Adjust the `figsize` or rotate labels using `rotation=45` as demonstrated in the `app.py` code.

3. **Database Connection Issues**:
   - Verify that PostgreSQL is running and accessible at the configured port (default: 5432).

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.

---

## Acknowledgements

- **Streamlit**: For making data visualization interactive and intuitive.
- **Seaborn & Matplotlib**: For the beautiful charts and visualizations.
- **PostgreSQL**: For robust and reliable database management.

---

## Contributing

Contributions are welcome! Please fork the repository, create a feature branch, and submit a pull request.

