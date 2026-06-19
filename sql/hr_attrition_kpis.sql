
use project;

select * from Hr_1;
select * from Hr_2;

-- KPI 1) Average Attrition Rate By department

SELECT department,
       (SUM(attrition_rate) * 100.0 / COUNT(*)) AS attrition_rate
FROM hr_1
GROUP BY department;

-- INSIGHTS--
/* All departments have Average Attrition Rate Above 49%, This indicates that a significant portion of 
   employees in each department is leaving the Company. It is the main Concern for the company. */

-- KPI 2) Average Hourly rate of Male Research Scientist


SELECT ROUND(AVG(hourlyrate), 0) AS average_hourly_rate
FROM hr_1
WHERE gender = 'Male' AND jobrole = 'Research Scientist';

-- Insights -- 
-- 114 is Average Hourly rate of male research scientist. 


-- KPI 3) Attrition rate Vs Monthly income stats

SELECT hr2.monthly_income_group,
       CONCAT(ROUND((SUM(hr1.Attrition_rate) * 100.0 / COUNT(*)), 0), ' %') AS attrition_rate
FROM hr_2 AS hr2
INNER JOIN hr_1 AS hr1 ON hr2.employee_id = hr1.employee_id
GROUP BY hr2.monthly_income_group;

-- Insights --
 /* By looking this output we can say all income group have similar attrition  rate 
    This data doesn't show any pattern in Attrition rate by Income */ 

-- KPI 4) Average working years for each Department

SELECT hr1.department,
       ROUND(AVG(hr2. Totalworkingyears), 2) AS average_working_years
FROM hr_1 AS hr1
INNER JOIN hr_2 AS hr2 ON hr1.employee_id = hr2.employee_id
GROUP BY hr1.department;

-- insights -- 
/* in every department, weather it's tech. or Nontech. employees have been working for around 20 years on average. 
  This means that most people stick around and have a lot of experience in the company. */

-- KPI 5) Job Role Vs Work life balance

SELECT hr1.jobrole,
       hr2.work_balance AS work_life_balance,
       COUNT(*) AS employee_count
FROM hr_1 AS hr1
JOIN hr_2 AS hr2 ON hr1.employee_id = hr2.employee_id
GROUP BY hr1.jobrole, hr2.work_balance
ORDER BY hr1.jobrole, hr2.work_balance;

-- Insights --
/* The majority of job roles have a good or excellent work-life balance, 
   as indicated by the higher counts in the "Good" and "Excellent" categories. 
   This is positive, suggesting that many employees across various roles perceive their work-life balance favorably.
   
   While most roles have positive ratings, there are some employees in each role who perceive their work-life balance as average or bad.
   It's important for the company to identify these areas and consider strategies to improve work-life balance, 
   especially for roles where it may be perceived as less favorable. */

-- KPI 6) Attrition rate Vs Year since last promotion relation

SELECT hr2.promotion_group AS years_since_last_promotion,
       SUM(hr1.Attrition_rate) AS attrition_count,
       COUNT(*) AS total_employees,
       (SUM(hr1.Attrition_rate) * 100.0 / COUNT(*)) AS attrition_rate
FROM hr_1 AS hr1
INNER JOIN hr_2 AS hr2 ON hr1.employee_id = hr2.employee_id
GROUP BY hr2.promotion_group
ORDER BY hr2.promotion_group;

-- insights --
/* The data doesn't show a significant difference in attrition rates based on the number of years since the last promotion. 
   This may indicate that the timing of promotions alone may not be a decisive factor in employee retention.
   
   The average attrition rates across all categories are around 50%, which is relatively high. 
   This suggests a general concern for employee retention within the organization, 
   and further investigation into the reasons behind the attrition could be beneficial. */


















