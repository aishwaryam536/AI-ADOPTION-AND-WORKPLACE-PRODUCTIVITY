CREATE DATABASE AI_Agent_Project;
USE AI_Agent_Project;
SHOW DATABASES;
SELECT * FROM ai_agent_final_cleaned;
---------BUSINESS QUESTIONS-----------------
---Q1. AI Agent usage by country--------------
SELECT
    country,
    ai_agent_usage,
    COUNT(*) AS total_count
FROM ai_agent_final_cleaned
GROUP BY country, ai_agent_usage
ORDER BY country, total_count DESC;

----Q2.AI Agent usage by industry----------
SELECT
    industry,
    ai_agent_usage,
    COUNT(*) AS total_count
FROM ai_agent_final_cleaned
GROUP BY industry, ai_agent_usage
ORDER BY industry, total_count DESC;
--------Q3.Calculate the average working hours saved for each AI usage category.--------------
SELECT
    ai_agent_usage,
    ROUND(AVG(hours_saved_per_week), 2) AS avg_hours_saved
FROM ai_agent_final_cleaned
GROUP BY ai_agent_usage
ORDER BY avg_hours_saved DESC;

--------------Q4.Analyze AI Agent adoption across 2024, 2025 and 2026.---------------------
SELECT
    year,
    ai_agent_usage,
    COUNT(*) AS total_count
FROM ai_agent_final_cleaned
GROUP BY year, ai_agent_usage
ORDER BY year, ai_agent_usage
--------------------Q5.Compare employee job satisfaction across different AI usage categories---------------------
SELECT
    ai_agent_usage,
    ROUND(AVG(job_satisfaction), 2) AS avg_job_satisfaction
FROM  ai_agent_final_cleaned
GROUP BY ai_agent_usage
ORDER BY avg_job_satisfaction DESC;
----------------------Q6.Identify which AI Agent usage categories are common across different job roles-----------------
SELECT
    job_role,
    ai_agent_usage,
    COUNT(*) AS total_count
FROM ai_agent_final_cleaned
GROUP BY job_role, ai_agent_usage
ORDER BY job_role, total_count DESC;

---------------Q7.Compare average productivity improvement across AI usage categories--------------------
SELECT
    ai_agent_usage,
    ROUND(AVG(productivity_change_percent), 2)
        AS avg_productivity_change
FROM ai_agent_final_cleaned
GROUP BY ai_agent_usage
ORDER BY avg_productivity_change DESC;

------------------------Q8.Find the average monthly AI expenditure for each AI usage category------------------------
SELECT
    ai_agent_usage,
    ROUND(AVG(monthly_ai_cost), 2) AS avg_monthly_cost
FROM ai_agent_final_cleaned
GROUP BY ai_agent_usage
ORDER BY avg_monthly_cost DESC;
