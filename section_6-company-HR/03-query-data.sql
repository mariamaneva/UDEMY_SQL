-- Objective: select all employees and all projects they are working on
-- select e.first_name, p.title from employees as e
-- left join projects_employees as pe on pe.employee_id = e.id
-- LEFT JOIN projects as p on pe.project_id = p.id;

-- Objective: select all employees that are part of a specific team
-- select e.first_name, t.name from employees as e
-- inner join teams as t on e.team_id = t.id;


-- Objective: select all employees that are part of team Data analysts

--get the team id
-- select * from teams;
--or
--select id from teams where name = 'Data Analysts';

-- select e.first_name, t.name from employees as e
-- inner join teams as t on e.team_id = t.id
-- where t.id = 2;

-- Objective: select all employees that are in building 3

-- select * from company_buildings;

select e.first_name, t.name as team_name, b.name as building_name from employees e
left join teams t on e.team_id = t.id
left join company_buildings b on t.building_id = b.id
where b.id = 3;