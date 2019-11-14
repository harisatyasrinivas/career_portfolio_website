create DATABASE portfolioweb;
use portfolioweb;

select * from portfolioweb.hibernate_sequence;

##########################################################################
INSERT INTO `portfolioweb`.`profile`
(`PROFILE_ID`,
`EMAIL`,
`FULL_NAME`,
`MOBILE`,
`NICK_NAME`,
`STATUS`,
`STORY`,
`SUMMARY`)
VALUES
(100,
"harisatyasrinivas@gmail.com",
"Hari Satya Srinivas Dasari",
5142927212,
"Satya Dasari",
"Actively looking for Full Time Job Opportunity",
"I am Satya Dasari, a Java developer and Application Support specialist graduated from the University of Ottawa. my areas of expertise include Development and Support of Java Enterprise Applications. 
I gathered my first experience working for Polaris as an associate software developer for Citi Private Bank. The work experience helped me to attain good knowledge in client reporting, banking & lending domains.
I enjoy solving a problem programmatically with elegant, efficient and easy to maintain code. Currently working as a tutor and building a multilingual dynamic web portfolio(Version-2) project which allows users to create a profile and publish in few clicks (check it on my Github).
My long-term goal is to develop applications that help local communities to build non-profit local community groups for raising, solving and escalating typical community issues to the concerned authorities for building sustainable life and better tomorrow.",
"Graduate student from University of Ottawa with 2.5 Year Prior experience as software Engineer at Polaris Consulting and Services Limited, India.");



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

delete from portfolioweb.profile where PROFILE_ID="2";

######################################################################################################

INSERT INTO `portfolioweb`.`education`
(`ID`,
`COUNTRY`,
`DEGREE`,
`FROM_DATE`,
`SCHOOL`,
`TO_DATE`,
`PROFILE_ID`,
`MY_GPA`,
`Total_GPA`)
VALUES
(2,
"INDIA",
"BACHELOR OF TECHNOLOGY",
"2011-08-01",
"GMR INSTITUTE OF TECHNOLOGY",
"2015-04-30",
3,
7.7,
10);

INSERT INTO `portfolioweb`.`education`
(`ID`,
`COUNTRY`,
`DEGREE`,
`FROM_DATE`,
`SCHOOL`,
`TO_DATE`,
`PROFILE_ID`,
`MY_GPA`,
`Total_GPA`)
VALUES
(3,
"CANADA",
"MASTER OF ENGINEERING",
"2018-01-01",
"UNIVERSITY OF OTTAWA",
"2019-06-01",
3,
3.8,
4);


select * from portfolioweb.education;
select * from portfolioweb.profile;

#####################################################################################################

INSERT INTO `portfolioweb`.`prof_websites`
(`ID`,
`WEBSITE_NAME`,
`WEBSITE_URL`,
`PROFILE_ID`)
VALUES
(1,
"Github",
"https://github.com/harisatyasrinivas/career_portfolio_website",
3);


INSERT INTO `portfolioweb`.`prof_websites`
(`ID`,
`WEBSITE_NAME`,
`WEBSITE_URL`,
`PROFILE_ID`)
VALUES
(2,
"linkedin",
"https://www.linkedin.com/in/hari-satya-srinivas-dasari/",
3);

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
(1,
"2017-11-30",
"POLARIS CONSULTING AND SERVICES LIMITED, HYDERABAD, INDIA",
"2015-07-01",
"Associate Software Developer",
3);

###################################################################################

select * from portfolioweb.project;

###############################################################################################

INSERT INTO `portfolioweb`.`address`
(`ADDRESS_LINE`,
`PROVINCE`,
`STATE`,
`ZIPCODE`,
`profile_PROFILE_ID`)
VALUES
("404 Britannia Road",
"ONTARIO",
"OTTAWA",
"K2B5Y2",
3);

select * from portfolioweb.address;
##############################################################################

INSERT INTO `portfolioweb`.`expertise`
(`EXPERTISE_ID`,
`FEILD`,
`FEILD_DETAILS`,
`PROFILE_ID`)
VALUES
(1,
"Design",
"Trained and self taught Html,CSS,Bootstrap for designing user friendly Interfaces",
3);

INSERT INTO `portfolioweb`.`expertise`
(`EXPERTISE_ID`,
`FEILD`,
`FEILD_DETAILS`,
`PROFILE_ID`)
VALUES
(2,
"Development",
"Experienced and Professional in creating Java Enterprise Web Application using Spring ",
3);

INSERT INTO `portfolioweb`.`expertise`
(`EXPERTISE_ID`,
`FEILD`,
`FEILD_DETAILS`,
`PROFILE_ID`)
VALUES
(3,
"Support",
"Expert in trobleshooting and Debugging client/server issues from Code,logs,web-services and data level",
3);

select * from portfolioweb.expertise;

delete from portfolioweb.expertise where EXPERTISE_ID=2;
##################################################################################################
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

select * from portfolioweb.project;
select * from portfolioweb.work_exp;
select * from portfolioweb.education;

INSERT INTO `portfolioweb`.`project`
(`PROJECT_ID`,
`TO_DATE`,
`PROJECT_DESC`,
`FROM_DATE`,
`PROJECT_NAME`,
`PROJECT_TASKS`,
`WORKEXP_ID`)
VALUES
(1,
"2017-10-01",
"Citi Private Banking For High NetWorth Clients (NAM,APAC,EMEA) (Client Reporting and Banking Domain)",
"2016-02-01",
"Inview Private bank",
"Managed L2 development and production support role for 5 critical applications of Citi Private bank which primarily covers client reporting, banking & lending domains.

Expertise in debugging the technical issues and professional knowledge in java enterprise application flow and Banking Domain (client reporting, banking & lending domains).

Troubleshooting and fixing the Technical issues reported by Clients and promoting code fixes by analyzing the issue from the Code, logs , Services and data level and promoting fix by data patches, data/web-service enquiry with upstream application team or in case of multiple user impact providing a detailed report with Jira issue to L3 team for Major code fix through deployments.

Proficient on Code Fixing for bug closure through minor releases to fix the ongoing service now tickets reported within Service Level Agreement. (SLA).

As Junior Tech Lead Organized and led weekly meeting from offshore to update the ongoing client technical issues, Jira issue status, and prioritizing the work to meet the production deployment deadlines by discussing and resolving the release bottlenecks.

Handled Code deployments, Application Server and Database Patching/Switching, Cloning Activities for UAT, Production and COB environments, COB Activities, Job Creation and Batch Monitoring. 

Implementing test cases and performing Application and Server Health Checks Post Code Deployments.

Expert Knowledge of IBM Administrative Consoles for configuring, monitoring, and maintenance of WebSphere Applications and resources.

Good Knowledge on ITRS and Urban Code Deploy for Application deployments and Server maintenance.",
1);

delete from portfolioweb.project where PROJECT_ID=3

INSERT INTO `portfolioweb`.`project`
(`PROJECT_ID`,
`TO_DATE`,
`PROJECT_DESC`,
`FROM_DATE`,
`PROJECT_NAME`,
`PROJECT_TASKS`,
`WORKEXP_ID`)
VALUES
(2,
"2017-10-01",
"Credit Platform Intranet portal for citi bankers (Lending Domain)",
"2016-02-01",
"CREDIT PLATFORM",
"On Demand Business Reports generation using SQL.

Configuration and setup of Autosys Jobs using Job Implementation Language (JIL) and Unix Scripts.

Real Time Autosys Batch Monitoring to ensure Data Feeds for upstream and downstream financial systems and job failure analysis and promoting bug/issues fixes by creating change request using Service Now.

Tech Support for End-User Application issues and promoted code fixes.",
1);

INSERT INTO `portfolioweb`.`project`
(`PROJECT_ID`,
`TO_DATE`,
`PROJECT_DESC`,
`FROM_DATE`,
`PROJECT_NAME`,
`PROJECT_TASKS`,
`WORKEXP_ID`)
VALUES
(3,
"2016-02-01",
"Managed L2 system admin Support activities and handled Application deployments for Production, UAT and COB",
"2015-07-01",
"SYSTEM ADMIN (L2)",
"Managed L2 system admin Support activities and handled Application Code deployments (Releases).

Performed Admin Activities for configuration and server maintenance like IHS Migration, DMGR Federation, User profile creation for IBM Was Console Access, Job profile manager configuration, Server health checks after deployments. 

Good Knowledge on JDBC and Pool configuration, session Management and LDAP 

Automation of frequent admin activates using Shell Scripting.
",
1);

###########################################################################################
select * from portfolioweb.expertise;

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(1,
'HTML',
"3",
"UI Design",
1);

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(2,
'CSS',
"1",
"UI Design",
1);

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(3,
'Java',
"3",
"Programming Languages",
2);

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(5,'Unix',"2.5","Programming Languages",3),
(6,'Spring Core',"2.5","Frameworks",3),
(7,'Spring AOP',"2.5","Frameworks",3),
(8,'Spring Boot',"1","Frameworks",3),
(9,'Hibernate',"2.5","Frameworks",3);



INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(10,'Servlets',"3","J2EE",2),
(11,'JSP',"3","J2EE",2),
(12,'JDBC',"3","J2EE",2),
(13,'JNDI',"3","J2EE",2),
(14,'EJB',"3","J2EE",2);

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(15,'SOAP',"3","Web Services",2),
(16,'REST',"3","Web Services",2),
(17,'Shell Scripting',"3","Scripting Languages",3),
(18,'Oracle',"3","Database",3),
(19,'MYSQL',"3","Database",3);

INSERT INTO `portfolioweb`.`skill`
(`ID`,
`SKILL`,
`SKILL_EXP`,
`SKILL_Feild`,
`EXPERTISE_ID`)
VALUES
(20,'Bootstrap 4',"1","UI Technologies",1),
(21,'Maven',"3","Development Tools",2),
(22,'Git',"2","Development Tools",2),
(23,'Eclipse',"3","Development Tools",2),
(24,'JIRA',"3","Agile-methodology / tools",2),
(25,'Confluence',"3","Agile-methodology / tools",2),
(26,'Scrum',"3","Agile-methodology / tools",2);

select * from portfolioweb.skill





