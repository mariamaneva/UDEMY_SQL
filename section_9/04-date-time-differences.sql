-- select timestampdiff(MINUTE, last_checkin, last_checkout) from memberships; -- mysql

-- select last_checkout - last_checkin from memberships; --postgres


-- membership duration in days

-- select datediff(membership_end, membership_start) from memberships; -- mysql

-- select membership_end - membership_start from memberships;  (postgres)



-- active membership duration

-- select datediff(now(), membership_start) from memmberships; -- mysql

-- select now() - membership_start from memberships; -- postgress