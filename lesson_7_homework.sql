--colab/jupyter: https://colab.research.google.com/drive/1j4XdGIU__NYPVpv74vQa9HUOAkxsgUez?usp=sharing

--task1  (lesson7)
-- sqlite3: Сделать тестовый проект с БД (sqlite3, project name: task1_7). В таблицу table1 записать 1000 строк с случайными значениями (3 колонки, тип int) от 0 до 1000.
-- Далее построить гистаграмму распределения этих трех колонко

--task2  (lesson7)
-- oracle: https://leetcode.com/problems/duplicate-emails/
SELECT Email 
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1

--task3  (lesson7)
-- oracle: https://leetcode.com/problems/employees-earning-more-than-their-managers/
select e.Name as Employee  from Employee e where e.managerID in (select ID from Employee) and Salary>
(select salary from Employee ee where e.managerID=ee.ID)

--task4  (lesson7)
-- oracle: https://leetcode.com/problems/rank-scores/
select Score, Dense_rank() over(order by Score DESC) as 'Rank' from Scores

--task5  (lesson7)
-- oracle: https://leetcode.com/problems/combine-two-tables/
select FirstName, Lastname, City, State from Person p left join Address a on a.PersonId=p.PersonId 