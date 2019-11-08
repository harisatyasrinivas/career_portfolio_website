create DATABASE portfolioweb;
use portfolioweb;

##########################################################################

INSERT INTO `portfolioweb`.`profile`
(`PROFILE_ID`,
`EMAIL`,
`FIRST_NAME`,
`LAST_NAME`,
`MOBILE`,
`PROFILE_PIC`,
`STATUS`,
`SUMMARY`)
VALUES
(100,
"harisatyasrinivas@gmail.com",
"Hari Satya Srinivas",
"Dasari",
5142927212,
"P:\Job Applications\Profile_Pic.jpg",
"Actively looking for Full Time Opportunity, Graduated from UOttawa with 2.5 Year experience as Associate Software Engineer",
"Master of Engineering graduate student with 2.5-year experience in the field of software design and implementation.
Proficient in Design, Development, Integration and Support of Enterprise applications (Citi Group).
Experienced System administrator providing L2 support in enterprise environment for handling deployments and
configuring, monitoring, and maintenance of Web Server and Application servers.
Excellent Interpersonal, Leadership and management skills honed through working as Junior Tech Lead");

select * from portfolioweb.profile;

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

INSERT INTO `portfolioweb`.`prof_websites`
(`ID`,
`WEBSITE_NAME`,
`WEBSITE_URL`,
`PROFILE_ID`)
VALUES
(100,
"Github",
"https://github.com/harisatyasrinivas/career_portfolio_website",
100);


INSERT INTO `portfolioweb`.`prof_websites`
(`ID`,
`WEBSITE_NAME`,
`WEBSITE_URL`,
`PROFILE_ID`)
VALUES
(101,
"linkedin",
"https://www.linkedin.com/in/hari-satya-srinivas-dasari/",
100);

select * from portfolioweb.prof_websites;

########################################################################################

select * from portfolioweb.work_exp;

INSERT INTO `portfolioweb`.`work_exp`
(`WORKEXP_ID`,
`TO_DATE`,
`COMPANY`,
`FROM_DATE`,
`ROLE`,
`PROFILE_ID`)
VALUES
(100,
"2017-11-30",
"POLARIS CONSULTING AND SERVICES LIMITED, HYDERABAD, INDIA",
"2015-07-01",
"Associate Software Developer",
100);

###################################################################################

INSERT INTO `portfolioweb`.`project`
(`PROJECT_ID`,
`TO_DATE`,
`PROJECT_DESC`,
`FROM_DATE`,
`PROJECT_NAME`,
`PROJECT_TASKS`,
`WORKEXP_ID`)
VALUES
(100,
"2017-11-30",
"Citi Private Banking Portal for High Networth Clients",
"2016-02-01",
"CITI PRIVATE BANK (IN VIEW – Client Application)",
"Managed L2 development and production for 5 critical applications of Citi Private bank which primarily
covers client reporting, banking & lending domains.
• Troubleshooting and fixing the Technical issues reported by Clients and promoting code fixes by
analyzing the issue from the Code, log and Services level and providing a detailed report with Jira issue
to L3 team in case of Major code fix required for resolving the client issue.
• Proficient on Code Fixing for bug closure through minor releases to fix the ongoing client issues reported
within Service Level Agreement. (SLA).
• As Junior Tech Lead Organized and led weekly meeting from offshore to update the ongoing client
incidents, Jira issue status, and prioritizing the work to meet the production deployment deadlines by
discussing and resolving the release bottlenecks.
• Handled Code deployments, Application Server and Database Patching/Switching, Cloning Activities for
UAT, Production and COB environments, COB Activities, Job Creation and Batch Monitoring.
• Implementing test cases and performing Application and Server Health Checks Post Code Deployments.
• Expert Knowledge on IBM Administrative Consoles for configuring, monitoring, and maintenance of
WebSphere Applications and resources.
• Good Knowledge on ITRS and Urban Code Deploy for Application deployments and Server maintenance",
100);

select * from portfolioweb.project;

###############################################################################################
INSERT INTO `portfolioweb`.`skill` 
(`ID`,
`SKILL`,
`SKILL_EXP`,
`PROJECT_ID`)
VALUES
(1,
"Spring MVC",
2,
100);

INSERT INTO `portfolioweb`.`skill` 
(`ID`,
`SKILL`,
`SKILL_EXP`,
`PROJECT_ID`)
VALUES
(2,
"Java",
2,
100);

INSERT INTO `portfolioweb`.`skill` 
(`ID`,
`SKILL`,
`SKILL_EXP`,
`PROJECT_ID`)
VALUES
(3,
"Unix",
2,
100);

select * from portfolioweb.skill;

###########################################################



