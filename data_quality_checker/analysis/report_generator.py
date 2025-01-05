import pandas as pd

def generate_report(issues, output_path="reports/data_quality_report.xlsx"):
    if not issues:
        print("No issues detected.")
        return

    report_data = []
    for issue in issues:
        for row in issue["issues"]:
            report_data.append({
                "Table": issue["table"],
                "Check": issue["check"],
                "Issue Details": str(row)
            })

    df = pd.DataFrame(report_data)
    df.to_excel(output_path, index=False)
    print(f"Report generated: {output_path}")
