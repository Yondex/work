
--task2  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/17

select member_name, am.status,  sum(amount*unit_price) as costs  from FamilyMembers as am join Payments as p on am.member_id = p.family_member 
where YEAR(date) = 2005
GROUP BY member_name, am.status

--task3  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/13
SELECT NAME FROM Passenger
GROUP BY name
HAVING count(NAME) >=2

--task4  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/38
SELECT count(first_name) as count FROM Student where first_name = 'Anna'



--task5  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/35
SELECT count(classroom) as count FROM Schedule where date = '2019-09-02'

--task7  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/32
SELECT FLOOR((avg(YEAR(curdate())-YEAR(birthday)))) as age  FROM FamilyMembers

--task8  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/27

select good_type_name, sum(unit_price*amount) as costs FROM  Payments p
join Goods g on  p.good = g.good_id
join GoodTypes gt on g.type= gt.good_type_id 
where 
YEAR(p.date)='2005' 
GROUP BY good_type_name


--task9  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/37
SELECT min(YEAR(curdate())- YEAR((birthday))) as 'year' FROM Student

--task10  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/44

--task11 (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/20

SELECT fm.status, fm.member_name, (unit_price* amount) as costs FROM FamilyMembers fm JOIN Payments p on fm.member_id = p.family_member join Goods g on p.good = g.good_id JOIN GoodTypes gt on g.type=gt.good_type_id where good_type_name='entertainment'


--task12  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/55

SELECT Company.name, COUNT(Company)  FROM Company join Trip
on Company.id=Trip.company
GROUP BY Company


--task13  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/45



--task14  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/43

SELECT last_name FROM Teacher JOIN Schedule on Teacher.id = Schedule.teacher JOIN Subject on Schedule.subject= Subject.id
where name = 'Physical Culture' 
ORDER BY last_name ASC 

--task15  (lesson8)
-- https://sql-academy.org/ru/trainer/tasks/63
SELECT CONCAT (last_name, '.', LEFT(first_name, 1), '.', LEFT(middle_name, 1), '.' ) as name  FROM Student ORDER BY last_name ASC 
