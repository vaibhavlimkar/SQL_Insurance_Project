create database Diabities_Project;

use  Diabities_Project;
select * from insurance;

--                                         Assignment - Insurance                                       --

-- Q1 - Show records of 'male' patient from 'southwest' region.   --

select * from insurance
where gender = 'male' and region = 'southwest';

-- Q2 - Show all records having bmi in range 30 to 45 both inclusive. --

select * from insurance
where bmi between 30 and 40;

-- Q3 - Show minimum and maximum bloodpressure of diabetic patient who smokes. Make column names as MinBP and MaxBP respectively. --

select min(bloodpressure) as MaxBP, max(bloodpressure) as MinBP from insurance
where diabetic = 'yes' and smoker = 'Yes';

-- Q4 - Find no of unique patients who are not from southwest region. --

select count(distinct(PatientID)) from insurance 
where region <> 'southwest';

select count(distinct(PatientID)), gender from insurance 
where region <> 'southwest'
group by gender;

-- Q5 - Total claim amount from male smoker. --

select sum(claim) from insurance
where gender = 'male' and smoker = 'yes';

-- Q6 - Select all records of south region. --
select * from insurance
where region like 'south%';

-- Q7 - No of patient having normal blood pressure. Normal range[90-120] --

select count(PatientID) from insurance
where bloodpressure between (90) and (120);

/* Q8 - No of pateint below 17 years of age having normal blood pressure as per below formula -

BP normal range = 80+(age in years × 2) to 100 + (age in years × 2)

Note: Formula taken just for practice, don't take in real sense.

*/

select count(*) from insurance
where age<17 and 
(bloodpressure between 80+(age *2) and 100+(age*2));

-- Q9 - What is the average claim amount for non-smoking female patients who are diabetic?
select round(avg(claim),2) from insurance
where smoker = 'No' and gender = 'male';

-- Q10 - Write a SQL query to update the claim amount for the patient with PatientID = 1234 to 5000. --
update insurance set claim = 5000 where patientID = 1234;

select * from insurance where patientID = 1234;

-- Q11 -- Write a SQL query to delete all records for patients who are smokers and have no children. --

delete from insurance where smoker = 'Yes' and children = 0;
















