--task1  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/the-report/problem
select Grade, Marks,  case when grade < 8 then Name = Null else Name end t from (select * from Students, Grades where Marks between Min_Mark and Max_Mark ) b;

--task3  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-9/problem

SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '^[QWRTPSDFGHJKLZXCVBNM]');

--task4  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '[QWRTPSDFGHJKLZXCVBNM]$');

--task5  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/weather-observation-station-11/problem

SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '^[QWRTPSDFGHJKLZXCVBNM]') or  REGEXP_LIKE(LOWER(CITY), '[QWRTPSDFGHJKLZXCVBNM]$');

--task6  (lesson9)
-- oracle:   https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '^[QWRTPSDFGHJKLZXCVBNM]') and  REGEXP_LIKE(LOWER(CITY), '[QWRTPSDFGHJKLZXCVBNM]$');
--task7  (lesson9)
-- oracle: https://www.hackerrank.com/challenges/salary-of-employees/problem
select name from Employee where salary > 2000 and months<10;

