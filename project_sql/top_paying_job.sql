-- QUESTION: Write a SQL query to find the top 10 highest paying data analytis jobs from the jobs table. 
-- The table has the following columns: job_id, job_title, job_location, salary.
    SELECT
        job_id,
        job_title,
        job_location,
        job_schedule_type,
        salary_year_avg,
        job_posted_date,
        name AS COMPANY_Name
    FROM job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE 
        job_title = 'Data Analyst' AND 
        salary_year_avg IS NOT NULL AND
        job_location ='Anywhere'
    ORDER BY salary_year_avg DESC
    LIMIT 10;