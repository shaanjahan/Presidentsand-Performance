
select * from approval_polls ap  ; 

select avg(approve)as Approval ,avg(disapprove) as disapproval
from approval_polls ap 
where president='Clinton'


select president , avg(approve) as approval, avg(disapprove) as disapproval 
from approval_polls ap
group by distinct president ; 

create table approval_disapproval as 
select president , avg(approve) as approval, avg(disapprove) as disapproval 
from approval_polls ap
group by distinct president ; 

alter table approval_disapproval 
add years varchar; 

update approval_disapproval 
set years = '2017-2021'
where president = 'Trump';

update approval_disapproval 
set years = '1933-1945'
where president = 'Roosevelt';

update approval_disapproval 
set years = '1945-1953'
where president = 'Truman';

update approval_disapproval 
set years = '1953-1961'
where president = 'Eisenhower';

update approval_disapproval 
set years = '1961-1963'
where president = 'Kennedy';

update approval_disapproval 
set years = '1963-1969'
where president = 'Johnson';

update approval_disapproval 
set years = '1969-1974'
where president = 'Nixon';

update approval_disapproval 
set years = '1974-1977'
where president = 'Ford';

update approval_disapproval 
set years = '1977-1981'
where president = 'Carter';

update approval_disapproval 
set years = '1981-1989'
where president = 'Reagan';

update approval_disapproval 
set years = '1989-1993'
where president = 'Bush 1';

update approval_disapproval 
set years = '1993-2001'
where president = 'Clinton';

update approval_disapproval 
set years = '2001-2009'
where president = 'Bush 2';

update approval_disapproval 
set years = '2009-2017'
where president = 'Obama';


