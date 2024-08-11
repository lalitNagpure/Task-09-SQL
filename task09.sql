select * from employee

select * from emp

-- 1)  first 3 digit should be between a to z
--    _
-- 
--    last 0 to 9
	
select emp_name from employee where emp_name ~* '^[a-z]{3}_[a-z]{4}[0-9]$'

-- 2) start with n end with a to z
--    5 times

select emp_location from employee where emp_location ~* '^n[a-z]{5}$'

-- 3) first 4 digit should be  a to z

select address from emp where address ~* '^[a-z]{4}$'

-- 4) first e 2 and 3 digit should be between a to z
--    _
--    a to z  4 time
--    last 0 to 5

select emp_name from employee where emp_name ~* '^e[a-z]{2}_[a-z]{4}[0-4]$'

-- 5) start with d end with a to z
--    8 times

select department from emp where department ~* '^D[a-z]{8}$'


-- 6) first 4 digit should be between 0 to 9
--    -
--    0 to 9 two time
--    -
--    0 to 9 two time

select joining_date::varchar from emp where joining_date::varchar ~* '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
