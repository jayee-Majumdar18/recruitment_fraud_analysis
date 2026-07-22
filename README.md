# Recruitment Fraud Analysis

## Overview
This project focuses on identifying fraudulent job postings using data analytics techniques. The analysis combines Python, MySQL, and Power BI to uncover fraud patterns, validate hypotheses, and generate actionable business insights from online recruitment data.

The project follows an end-to-end analytics workflow:
- Data Loading & Cleaning
- Exploratory Data Analysis (EDA)
- SQL-Based Hypothesis Testing
- Interactive Dashboard Development
- Business Recommendations

---

## Dataset
- Dataset Name: Fake Job Postings Dataset
- Total Records: 17,880 Job Postings
- Total Features: 18 Columns

Key columns include:
- Job ID
- Title
- Location
- Employment Type
- Industry
- Required Education
- Required Experience
- Salary Range
- Company Profile
- Telecommuting
- Has Company Logo
- Fraudulent (Target Variable)

> Note: The complete dataset is not included in this repository due to GitHub file size limitations.

---

## Project Objective
The objective of this project is to:
- Identify characteristics of fraudulent job postings.
- Analyze recruitment fraud patterns across industries and employment types.
- Evaluate factors such as company logo, salary information, and remote work.
- Provide data-driven recommendations for safer job-seeking decisions.

---

## Tools & Technologies

| Category | Tools |
|---------|------|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Database | MySQL |
| Visualization | Power BI |
| IDE | Jupyter Notebook |
| Version Control | Git & GitHub |

---

## Project Workflow

### 1. Exploratory Data Analysis (EDA)
- Loaded dataset using Pandas.
- Checked data types and missing values.
- Removed/handled inconsistencies.
- Performed target variable analysis.
- Calculated:
  - Total Jobs
  - Real Jobs
  - Fake Jobs
  - Fraud Rate (%)

### 2. Data Cleaning
- Handled missing values.
- Standardized column names.
- Created derived columns for analysis.
- Prepared the dataset for SQL and Power BI.

### 3. SQL Analysis (MySQL)
Performed structured SQL analysis to validate the following hypotheses:

1. Company Logo vs Fraud Rate
2. Industry-wise Fraud Analysis
3. Remote vs Non-Remote Fraud Analysis
4. Education & Experience Requirement Analysis
5. Salary Information vs Fraud Rate
6. Employment Type vs Fraud Rate
7. Company Profile Completeness vs Fraud Rate

### 4. Power BI Dashboard
Developed an interactive dashboard featuring:
- KPI Cards
- Fraud Rate Visualizations
- Employment Type Analysis
- Industry Analysis
- Salary Analysis
- Remote Job Analysis
- Interactive Slicers
- Business Insights & Recommendations

---

## Dashboard

The Power BI dashboard provides an interactive view of recruitment fraud trends and enables users to explore fraud patterns across multiple dimensions.

### Dashboard Features:
- Total Jobs
- Total Fake Jobs
- Fraud Rate (%)
- Company Logo Analysis
- Employment Type Analysis
- Salary Analysis
- Industry Analysis
- Remote Job Analysis
- Business Insights

---

## Key Results

- Job postings without company logos exhibit significantly higher fraud rates.
- Remote job postings are relatively more susceptible to fraud.
- Part-time positions have the highest fraud rate among employment types.
- Incomplete company information is associated with increased fraud risk.
- Salary information alone is not a reliable indicator of job legitimacy.

---

## Business Recommendations

- Strengthen employer verification procedures.
- Apply additional screening to remote job postings.
- Flag incomplete job listings for manual review.
- Monitor high-risk industries regularly.
- Educate job seekers about common fraud indicators.

---

## Repository Structure

```text
├── Dataset/
├── Jupyter Notebook/
├── SQL Queries/
├── Power BI Dashboard/
├── Project Report/
├── Images/
└── README.md
```

---

## How to Run
1. Clone the repository.
2. Install the required Python libraries.
3. Load the dataset into Python.
4. Run the data cleaning and EDA scripts.
5. Import the cleaned data into MySQL.
6. Execute the SQL queriesfor hypothesis testing.
7. Open the Power BI dashboard file to explore visualizations.

---

## Author

**Jayee Majumdar**

Data Analytics Project | Python | MySQL | Power BI
