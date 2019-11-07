INSERT INTO `portfolioweb`.`profile`
(`PROFILE_ID`,
`ABOUT`,
`EMAIL`,
`FIRST_NAME`,
`LAST_NAME`,
`MOBILE`)
VALUES
(100,
"Actively looking for Full Time Opportunity, Graduated from UOttawa with 2.4 Year experience as Software Engineer",
"harisatyasrinivas@gmail.com",
"HARI SATYA SRINIVAS",
"DASARI",
"5142927212");

######################################################################################################

INSERT INTO `portfolioweb`.`education`
(`ID`,
`COUNTRY`,
`DEGREE`,
`FROM_DATE`,
`SCHOOL`,
`TO_DATE`,
`PROFILE_ID`)
VALUES
(100,
"CANADA",
"MASTER OF ENGINEERING",
"2018-01-01",
"UNIVERSITY OF OTTAWA",
"2019-06-01",
100);

select * from portfolioweb.education;
select * from portfolioweb.profile;

#####################################################################################################


