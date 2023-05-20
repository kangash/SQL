-- 1. Вывести все поля
select * from students;

-- 2. Вывести только id пользователей
select id from students;

-- 3. Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on from students;

-- 4. Вывести пользователей, у которых пароль 12333
select * from students 
where password = '12333';

-- 5. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select * from students
where created_on = '2021-03-26 00:00:00';

-- 6. Вывести пользователей где в имени есть слово Анна
select * from students
where name like '%Anna%';

-- 7. Вывести пользователей где в имени в конце есть 8
select * from students
where name like '%8';

-- 8. Вывести пользователей где в имени в есть буква а
select * from students
where name like '%a%';

-- 9. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select * from students
where created_on = '2021-07-12 00:00:00' and password = '1m313';

-- 10. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%';

-- 11. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select * from students
where created_on = '2021-07-12 00:00:00' and name like '%8%';

-- 12. Вывести пользователя у которых id равен 110
select * from students
where id = 110;

-- 13. Вывести пользователя у которых id больше 140
select * from students
where id > 140;

-- 14. Вывести пользователя у которых id меньше 130
select * from students
where id < 130;

-- 15. Вывести пользователя у которых id меньше 127 или больше 188
select * from students
where id < 127 or id > 188;

-- 16. Вывести пользователя у которых id меньше либо равно 137
select * from students
where id <= 137;

-- 17. Вывести пользователя у которых id больше либо равно 137
select * from students
where id >= 137;

-- 18. Вывести пользователя у которых id больше 180 но меньше 190
select * from students
where id > 180 and id < 190;

-- 19. Вывести пользователя у которых id между 180 и 190
select * from students
where id between 180 and 190;

-- 20. Вывести пользователей где password равен 12333, 1m313, 123313
select * from students
where password in ('12333','1m313','123313');

-- 21. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select * from students
where created_on in ('2020-10-03 00:00:00','2021-05-19 00:00:00','2021-03-26 00:00:00');

-- 22. Вывести минимальный id
select min(id) as min_Id from students;

-- 23. Вывести максимальный id
select max(id) as max_Id from students;

-- 24. Вывести количество пользователей
select count(id) as students_number from students;

-- 25. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля
select id, name, created_on from students
order by created_on;

-- 26. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля
select id, name, created_on from students
order by created_on desc;