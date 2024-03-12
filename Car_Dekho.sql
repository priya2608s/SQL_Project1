select * from cars.car_dekho;
use cars;
select*from car_dekho;
---Q1. Total Cars : To get a count of total records----
select count(*) from car_dekho
--- Q2. The Manager asked the employee How many cars will be available in 2023?--

select count(*) from car_dekho where year=2023;
--Q3.The Manager asked the employee How many cars will be available in 2020,2021,2022?-

select count(*) from car_dekho where year=2020;

--Q4. Group BY--

select count(*) from car_dekho where year in (2020,2021,2022)group by year;

---Q5. Client asked me to print the total of all cars by year. I dont see all the details-- 

select year, count(*)from car_dekho group by year;

---Q6. Client asked to car dealer agen How many diesel cars will there be in 2002?--

select count(*)from car_dekho where year=2020 and fuel = "diesel"

---Q7. Client requested a car dealer agent How many petrol cars will there be in 2020?---

select count(*) from car_dekho where year = 2020 and fuel = "petrol"

---Q8. The manager told the employee to give a print All the fuel cars (Petrol,diesel,CNG) come by all year---

select year, count(*)from car_dekho where fuel = "petrol" group by year
select year, count(*)from car_dekho where fuel = "diesel" group by year
select year, count(*)from car_dekho where fuel = "cng" group by year

---Q9. Manager said there were more than 100 cars in a given year, which year had more than 100 cars?---

select year,count(*) from car_dekho group by year having  count(*)>100
select year,count(*) from car_dekho group by year having  count(*)<50

--- Q10. The manager said to the employee all cars count details between 2015 and 2023, we need complete list---
select count(*) from car_dekho where year between 2015 and 2023

--- Q11. The manager said to employees all cars details between 2015 and 2023 we need complete list---

select*from car_dekho where year between 2015 and 2023
















