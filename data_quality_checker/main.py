from database.db_connection import get_connection
from analysis.data_quality import check_data_quality
from analysis.report_generator import generate_report

def main():
    print("Connecting to database...")
    engine = get_connection()

    print("Checking data quality...")
    issues = check_data_quality(engine)

    print("Generating report...")
    generate_report(issues)

if __name__ == "__main__":
    main()
