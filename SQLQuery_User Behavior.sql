


--Q1: look up dataset?

SELECT *
FROM user_behavior_dataset;


--Q2:Display is first 20 roe in data?

SELECT TOP 20*
FROM user_behavior_dataset;

--Q3: Find out the total number of users?

SELECT COUNT(*) AS count_user
FROM user_behavior_dataset;

--Q4:Know the number of different operating systems?

SELECT Operating_System, Count(Operating_System) AS count_Operating_System
from user_behavior_dataset
Group by Operating_System;

SELECT COUNT(DISTINCT Operating_System) AS total_os
FROM user_behavior_dataset;

--Q5:Find out the number of different Device Models?


SELECT Device_Model, Count(Device_Model) AS count_Device_Model
from user_behavior_dataset
Group by Device_Model;

SELECT COUNT(DISTINCT Device_Model) AS total_devices
FROM user_behavior_dataset;

--Q6:Show the gender distribution (number of each gender)?
SELECT Gender, Count(Gender)AS count_gender
FROM user_behavior_dataset
Group by Gender;

--Q7:Calculate average: App Usage Time?

SELECT AVG(App_Usage_Time_min_day) AS avg_App_Usage_Time
FROM user_behavior_dataset;

--Q8:Calculate average: Screen On Time?

SELECT AVG(Screen_On_Time_hours_day) AS avg_Screen_On_Time
FROM user_behavior_dataset;

--Q9:Calculate average: Data Usage?

SELECT AVG(Data_Usage_MB_day) AS avg_Data_Usage
FROM user_behavior_dataset;

--Q10:Top 10 users in App Usage Time?

SELECT Top 10 User_id,App_Usage_Time_min_day
FROM user_behavior_dataset
Order by App_Usage_Time_min_day DESC;

--Q11:Lowest 10 users in App Usage Time?

SELECT top 10 User_id,App_Usage_Time_min_day
FROM user_behavior_dataset
Order by App_Usage_Time_min_day ASC;

--Q12:Average usage by OS (Android vs iOS)?

SELECT Operating_System, Avg(App_Usage_Time_min_day) AS avg_usage_A_S
FROM user_behavior_dataset
Group by Operating_System
ORDER BY avg_usage_A_S DESC;

--Q13:Average Battery Drain by Device Mode?

SELECT Device_Model, AVG(Battery_Drai_mAh_day) AS avg_Battery_Drai
FROM user_behavior_dataset
Group by Device_Model
Order by avg_Battery_Drai DESC;

--Q14:Top 5 Most Used Devices?

SELECT TOP 5
Device_Model,
COUNT(*) AS total_users
FROM user_behavior_dataset
GROUP BY Device_Model
ORDER BY total_users DESC;

--Q15:The 5 most common age groups using the app (AVG usage by age)?

SELECT TOP 5
Age,
AVG(App_Usage_Time_min_day) AS avg_usage
FROM user_behavior_dataset
GROUP BY Age
ORDER BY avg_usage DESC;

--Q16:Divide users into segments?
--Q17:How many users are in each segment?
--Q18:Which segment consumes the most data?
--Q19:Which segment consumes the most battery?

WITH Segment AS (

SELECT
CASE
    WHEN App_Usage_Time_min_day >= 300 THEN 'Heavy User'
    WHEN App_Usage_Time_min_day >= 150 THEN 'Medium User'
    ELSE 'Low User'
END AS user_segment,

Data_Usage_MB_day,
Battery_Drai_mAh_day

FROM user_behavior_dataset
)

SELECT
user_segment,
COUNT(*) AS total_users,
AVG(Data_Usage_MB_day) AS avg_data_usage,
AVG(Battery_Drai_mAh_day) AS avg_battery

FROM Segment
GROUP BY user_segment
ORDER BY avg_data_usage DESC;

--Q20:Is there a relationship between:
--Screen On Time, App Usage Time?
--(A simple correlation analysis using averages)
SELECT
AVG(Screen_On_Time_hours_day) AS avg_screen_time,
AVG(App_Usage_Time_min_day) AS avg_app_usage
FROM user_behavior_dataset;

SELECT
Screen_On_Time_hours_day,
AVG(App_Usage_Time_min_day) AS avg_usage
FROM user_behavior_dataset
GROUP BY Screen_On_Time_hours_day
ORDER BY Screen_On_Time_hours_day;


--Q21:Top Device Model in terms of: Usage Data Usage Battery Drain

SELECT TOP 1
Device_Model,
AVG(App_Usage_Time_min_day) AS avg_usage
FROM user_behavior_dataset
GROUP BY Device_Model
ORDER BY avg_usage DESC;

--Q22:Lowest performing Device Model (Low engagement

SELECT TOP 1
Device_Model,
AVG(App_Usage_Time_min_day) AS avg_usage
FROM user_behavior_dataset
GROUP BY Device_Model
ORDER BY avg_usage ASC;











