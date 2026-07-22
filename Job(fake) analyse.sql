CREATE DATABASE fake_job_analytics;
USE fake_job_analytics;
SELECT * FROM fake_job;

-- 1.	Are job postings without a company logo more likely to be fraudulent than those with a company logo?
SELECT has_company_logo,
	   COUNT(*) AS total_jobs,
       SUM(fraudulent) AS fake_jobs,
       ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY has_company_logo;

-- 2.	Do certain industries exhibit significantly higher fraud rates compared to others? 
SELECT industry,
	   COUNT(*) AS total_jobs,
       SUM(fraudulent) AS fake_jobs,
       ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY industry
ORDER BY fraud_rate DESC;

-- 3.	Are remote (telecommuting) job postings more likely to be fraudulent than non-remote job postings? 
SELECT telecommuting,
	   COUNT(*) AS total_jobs,
       SUM(fraudulent) AS fake_jobs,
       ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY telecommuting;

-- 4.	Do job postings that do not specify required education or experience have a higher likelihood of being fraudulent? 
SELECT required_education,
	   required_experience,
       COUNT(*) AS total_jobs,
       SUM(fraudulent) AS fake_jobs,
       ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY required_education, required_experience
ORDER BY fraud_rate DESC;

-- 5.	Are job postings that do not specify a salary range more likely to be fraudulent than those that specify a salary range?
SELECT
	CASE
		WHEN salary_range = 'Not Specified' THEN 'Salary Not Specified'
        ELSE 'Salary Specified'
	END AS salary_status,
    COUNT(*) AS total_jobs,
    SUM(fraudulent) AS fake_jobs,
    ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY salary_status
ORDER BY fraud_rate DESC;

-- 6.	Do specific employment types (e.g. part-time, contract, temporary) experience higher levels of recruitment fraud 
-- than full-time positions?
SELECT employment_type,
	   COUNT(*) AS total_jobs,
	   SUM(fraudulent) AS fake_jobs,
       ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY employment_type
ORDER BY fraud_rate DESC;

-- 7.	Are job postings with missing or incomplete company profiles more likely to be fraudulent?
SELECT
	CASE
		WHEN company_profile = 'No Company profile provided' THEN 'Profile Not Provided'
        ELSE 'Profile Provided'
	END AS company_profile_status,
	COUNT(*) AS total_jobs,
	SUM(fraudulent) AS fake_jobs,
	ROUND((SUM(fraudulent) * 100) / COUNT(*), 2) AS fraud_rate
FROM fake_job 
GROUP BY company_profile_status
ORDER BY fraud_rate DESC;