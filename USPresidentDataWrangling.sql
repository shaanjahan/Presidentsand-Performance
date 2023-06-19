create database economics; 
use economics; 

select * from approval_polls; 

CREATE TABLE approval_disapproval AS
SELECT President, AVG(approve) AS approval, AVG(disapprove) AS disapproval
FROM approval_polls
GROUP BY President;

select * from approval_disapproval; 
INSERT INTO approval_disapproval (President, approval, disapproval)
VALUES ('Joe Biden', 41, 54);

select * from approval_disapproval; 

ALTER TABLE approval_disapproval
ADD years VARCHAR(50);

SET SQL_SAFE_UPDATES = 0;

UPDATE approval_disapproval
SET years = '2017-2021'
WHERE President = 'Trump';

update approval_disapproval 
set years = '1933-1944'
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
set years = '1969-1973'
where president = 'Nixon';

update approval_disapproval 
set years = '1974-1976'
where president = 'Ford';

update approval_disapproval 
set years = '1977-1980'
where president = 'Carter';

update approval_disapproval 
set years = '1981-1988'
where president = 'Reagan';

update approval_disapproval 
set years = '1989-1992'
where president = 'Bush 1';

update approval_disapproval 
set years = '1993-2000'
where president = 'Clinton';

update approval_disapproval 
set years = '2001-2008'
where president = 'Bush 2';

update approval_disapproval 
set years = '2009-2016'
where president = 'Obama';

UPDATE approval_disapproval
SET years = '2022'
WHERE president = 'Joe Biden'; 

SELECT * FROM approval_disapproval; 

SELECT @@hostname;
SELECT USER();

DROP USER 'root'@'localhost';
CREATE USER 'bozo'@'localhost' IDENTIFIED BY '1234567';
GRANT ALL PRIVILEGES ON *.* TO 'bozo'@'localhost';
FLUSH PRIVILEGES;





