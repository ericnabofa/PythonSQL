import pandas as pd
from sqlalchemy import text

def check_data_quality(engine):
    issues = []

    # Define queries
    queries = {
        "customer_data": {
            "null_check": "SELECT * FROM customer_data WHERE name IS NULL OR email IS NULL;",
            "duplicate_check": "SELECT customer_id, COUNT(*) FROM customer_data GROUP BY customer_id HAVING COUNT(*) > 1;"
        },
        "sales_data": {
            "null_check": "SELECT * FROM sales_data WHERE amount IS NULL OR sale_date IS NULL;",
            "duplicate_check": "SELECT sale_id, COUNT(*) FROM sales_data GROUP BY sale_id HAVING COUNT(*) > 1;",
            "outlier_check": "SELECT * FROM sales_data WHERE amount < 0 OR amount > 10000;"  # Adjust outlier threshold
        }
    }

    with engine.connect() as conn:
        for table, checks in queries.items():
            for check_name, query in checks.items():
                result = conn.execute(text(query)).fetchall()
                if result:
                    issues.append({
                        "table": table,
                        "check": check_name,
                        "issues": result
                    })

    return issues
