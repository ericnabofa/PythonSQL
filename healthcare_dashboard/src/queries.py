import pandas as pd

def get_patient_demographics(conn):
    query = """
    SELECT condition, COUNT(*) AS patient_count, AVG(age) AS avg_age
    FROM patients
    GROUP BY condition;
    """
    return pd.read_sql(query, conn)

def get_avg_treatment_costs(conn):
    query = """
    SELECT treatment_type, AVG(cost) AS avg_cost
    FROM treatments
    GROUP BY treatment_type;
    """
    return pd.read_sql(query, conn)

def get_outcome_distribution(conn):
    query = """
    SELECT condition, COUNT(*) AS count
    FROM patients
    GROUP BY condition;
    """
    return pd.read_sql(query, conn)

def get_admission_trends(conn):
    query = """
    SELECT admission_date, COUNT(*) AS count
    FROM patients
    GROUP BY admission_date
    ORDER BY admission_date;
    """
    return pd.read_sql(query, conn)
