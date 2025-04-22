-- Standardizing and merging all datasets
SELECT 
  CAST(employee_id AS STRING) AS employee_id,
  'Departments' AS department,
  CAST(time_spend_company AS FLOAT64) AS years_at_company,
  CAST(Quit_the_Company AS STRING) AS attrition_status,
  CAST(satisfaction_level AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.tbl_hr_data_large`

UNION ALL

SELECT 
  CAST(employee_id AS STRING) AS employee_id,
  'Departments' AS department,
  CAST(time_spend_company AS FLOAT64) AS years_at_company,
  CAST(Quit_the_Company AS STRING) AS attrition_status,
  CAST(satisfaction_level AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.tbl_hr_data`

UNION ALL

SELECT 
  CAST(employee_id AS STRING) AS employee_id,
  'Departments' AS department,
  CAST(time_spend_company AS FLOAT64) AS years_at_company,
  CAST(Quit_the_Company AS STRING) AS attrition_status,
  CAST(satisfaction_level AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.tbl_new_employees`

UNION ALL

SELECT 
  CAST(employee_id AS STRING) AS employee_id,
  'Departments' AS department,
  CAST(time_spend_company AS FLOAT64) AS years_at_company,
  CAST(Quit_the_Company AS STRING) AS attrition_status,
  CAST(satisfaction_level AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.tbl_new_employee_large`

UNION ALL

SELECT 
  CAST(EmployeeID AS STRING) AS employee_id,
  department_name AS department,
  CAST(length_of_service AS FLOAT64) AS years_at_company,
  CAST(STATUS AS STRING) AS attrition_status,
  CAST(NULL AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.10YearTerminationData`

UNION ALL

SELECT
  CAST(`Employee ID` AS STRING) AS employee_id,
  `Job Role` AS department,
  CAST(`Years at Company` AS FLOAT64) AS years_at_company,
  CAST(Attrition AS STRING) AS attrition_status,
  CASE
    WHEN `Job Satisfaction` = 'High' THEN 1.0
    WHEN `Job Satisfaction` = 'Medium' THEN 0.5
    WHEN `Job Satisfaction` = 'Low' THEN 0.0
    ELSE SAFE_CAST(`Job Satisfaction` AS FLOAT64)
  END AS satisfaction_level
FROM `employee-churn-59343.employeedata.test`

UNION ALL

SELECT 
  CAST(NULL AS STRING) AS employee_id,
  Department AS department,
  CAST(YearsAtCompany AS FLOAT64) AS years_at_company,
  CAST(Attrition AS STRING) AS attrition_status,
  CAST(JobSatisfaction AS FLOAT64) AS satisfaction_level
FROM `employee-churn-59343.employeedata.HREmployeeAttrition`
