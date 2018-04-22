use lesson1mysql;
 select  name,title from task inner join user on  task.user_id=user.id;
select count(id) tasknumber from task;
select count(id) withoutvaliddate from task where due_date is null ;
select * from task;
select * from task where  status_id=3;
select * from task where  status_id=1;
select * from task where  status_id=3;
SELECT *
FROM
task
ORDER BY created DESC;

SELECT *
FROM
task
ORDER BY created DESC 
LIMIT 1;

SELECT count(*) AS mycount, status_id
FROM task
GROUP BY status_id;

SELECT  name,due_date 
FROM task inner join user on  task.user_id=user.id;
SELECT  status.name,title 
FROM task inner join status on  task.status_id=status.id;

SELECT (status.name),count(task.id) as task_count 
FROM task inner join status on  task.status_id=status.id 
GROUP BY status.ID;

SELECT status.name, title AS myCount 
FROM task inner join status on  task.status_id=status.id 
ORDER BY myCount DESC;