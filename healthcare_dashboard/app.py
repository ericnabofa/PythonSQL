import streamlit as st
import matplotlib.pyplot as plt
import seaborn as sns
from src.db_connection import get_db_connection
from src.queries import get_patient_demographics, get_avg_treatment_costs, get_outcome_distribution, get_admission_trends

# Add custom CSS for body layout
st.markdown(
    """
    <style>
    /* General body styling */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f4f7f6;
        margin: 0;
        padding: 0;
    }

    /* Container for the dashboard */
    .dashboard-container {
        background-color: white;
        max-width: 80%;
        margin: auto;
        padding: 20px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Title styling */
    .dashboard-title {
        color: #34495e;
        text-align: center;
        font-size: 2.5em;
        font-weight: bold;
        margin-bottom: 20px;
    }

    /* Section header styling */
    .section-header {
        color: #2c3e50;
        font-size: 1.75em;
        font-weight: bold;
        margin-top: 30px;
    }

    /* General text styling */
    .dashboard-text {
        font-size: 1em;
        color: #555;
        line-height: 1.6;
    }

    /* Footer styling */
    .dashboard-footer {
        text-align: center;
        margin-top: 40px;
        color: #95a5a6;
        font-size: 0.9em;
    }
    </style>
    """,
    unsafe_allow_html=True,
)

# # Wrap the entire dashboard in a styled container
# st.markdown('<div class="dashboard-container">', unsafe_allow_html=True)

# Dashboard Title
st.markdown('<h1 class="dashboard-title">Healthcare Analytics Dashboard</h1>', unsafe_allow_html=True)

# Database connection
conn = get_db_connection()

# Patient Demographics Section
st.markdown('<h2 class="section-header">Patient Demographics</h2>', unsafe_allow_html=True)
demographics = get_patient_demographics(conn)
st.markdown('<p class="dashboard-text">The table below shows demographic data for patients, including average age by condition.</p>', unsafe_allow_html=True)
st.write(demographics)

# Average Treatment Costs Section
st.markdown('<h2 class="section-header">Average Treatment Costs</h2>', unsafe_allow_html=True)
st.markdown('<p class="dashboard-text">Explore the average costs of various treatments.</p>', unsafe_allow_html=True)

costs = get_avg_treatment_costs(conn)
fig, ax = plt.subplots(figsize=(8, 5))  # Increase figure size for readability
sns.barplot(x='treatment_type', y='avg_cost', data=costs, ax=ax)

# Rotate x-axis labels for better visibility
ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')  # Rotate by 45 degrees
ax.set_title("Average Cost by Treatment Type")
ax.set_xlabel("Treatment Type")
ax.set_ylabel("Average Cost")
st.pyplot(fig)

# Outcome Distribution Section
st.markdown('<h2 class="section-header">Outcome Distribution</h2>', unsafe_allow_html=True)
st.markdown('<p class="dashboard-text">The chart below illustrates the distribution of patient outcomes by condition.</p>', unsafe_allow_html=True)
outcomes = get_outcome_distribution(conn)
fig, ax = plt.subplots()
ax.pie(outcomes['count'], labels=outcomes['condition'], autopct='%1.1f%%', startangle=140)
ax.set_title("Distribution of Patient Outcomes")
st.pyplot(fig)

# Admission Trends Section
st.markdown('<h2 class="section-header">Admission Trends</h2>', unsafe_allow_html=True)
st.markdown('<p class="dashboard-text">Track admission trends over time using the chart below.</p>', unsafe_allow_html=True)

trends = get_admission_trends(conn)
fig, ax = plt.subplots(figsize=(10, 5))  # Increase figure size for better readability
ax.plot(trends['admission_date'], trends['count'], marker='o')  # Add markers for better visibility

# Format the x-axis to show fewer ticks and rotate labels
ax.set_xticks(trends['admission_date'][::max(1, len(trends['admission_date']) // 10)])  # Show 10 evenly spaced ticks
ax.set_xticklabels(ax.get_xticklabels(), rotation=45, ha='right')  # Rotate labels

ax.set_title("Admission Trends Over Time")
ax.set_xlabel("Date")
ax.set_ylabel("Number of Admissions")
st.pyplot(fig)


# Footer
st.markdown('<div class="dashboard-footer">Powered by Streamlit | Healthcare Analytics Dashboard © 2025</div>', unsafe_allow_html=True)

# Close the container div
st.markdown('</div>', unsafe_allow_html=True)

# Close database connection
conn.close()
