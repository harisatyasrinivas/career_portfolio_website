Hibernate: 
    
    create table ADDRESS (
       ADDRESS_LINE longtext,
        PROVINCE varchar(255),
        STATE varchar(255),
        ZIPCODE varchar(255),
        profile_PROFILE_ID bigint not null,
        primary key (profile_PROFILE_ID)
    ) engine=InnoDB
Hibernate: 
    
    create table education (
       ID bigint not null auto_increment,
        COUNTRY varchar(255) not null,
        DEGREE varchar(255) not null,
        FROM_DATE date not null,
        SCHOOL varchar(255) not null,
        TO_DATE date not null,
        PROFILE_ID bigint,
        primary key (ID)
    ) engine=InnoDB
Hibernate: 
    
    create table hibernate_sequence (
       next_val bigint
    ) engine=InnoDB
Hibernate: 
    
    insert into hibernate_sequence values ( 1 )
Hibernate: 
    
    insert into hibernate_sequence values ( 1 )
Hibernate: 
    
    create table PROF_WEBSITES (
       ID bigint not null auto_increment,
        WEBSITE_NAME varchar(255),
        WEBSITE_URL varchar(255),
        PROFILE_ID bigint,
        primary key (ID)
    ) engine=InnoDB
Hibernate: 
    
    create table PROFILE (
       PROFILE_ID bigint not null,
        ABOUT longtext,
        EMAIL varchar(255) not null,
        FIRST_NAME varchar(255) not null,
        LAST_NAME varchar(255) not null,
        MOBILE varchar(10) not null,
        primary key (PROFILE_ID)
    ) engine=InnoDB
Hibernate: 
    
    create table PROJECT (
       PROJECT_ID bigint not null auto_increment,
        TO_DATE date,
        PROJECT_DESC longtext,
        FROM_DATE date,
        PROJECT_NAME varchar(255),
        PROJECT_TASKS longtext,
        WORKEXP_ID bigint,
        primary key (PROJECT_ID)
    ) engine=InnoDB
Hibernate: 
    
    create table SKILL (
       ID bigint not null auto_increment,
        SKILL varchar(255),
        SKILL_EXP integer,
        PROJECT_ID bigint,
        primary key (ID)
    ) engine=InnoDB
Hibernate: 
    
    create table WORK_EXP (
       WORKEXP_ID bigint not null,
        TO_DATE date,
        COMPANY varchar(255),
        FROM_DATE date,
        ROLE varchar(255),
        PROFILE_ID bigint,
        primary key (WORKEXP_ID)
    ) engine=InnoDB
Hibernate: 
    
    alter table PROFILE 
       drop index UK_93do4evvnsyosg9vfvyfxcu6x
Hibernate: 
    
    alter table PROFILE 
       add constraint UK_93do4evvnsyosg9vfvyfxcu6x unique (EMAIL)
Hibernate: 
    
    alter table PROFILE 
       drop index UK_fn9ey1njtkakot3u7wjd798p2
Hibernate: 
    
    alter table PROFILE 
       add constraint UK_fn9ey1njtkakot3u7wjd798p2 unique (MOBILE)
Hibernate: 
    
    alter table ADDRESS 
       add constraint FK29kfoemcoeqkeyuko3axxmw9 
       foreign key (profile_PROFILE_ID) 
       references PROFILE (PROFILE_ID)
Hibernate: 
    
    alter table education 
       add constraint FKrtb2ig3oqvaclvrwhaudhqead 
       foreign key (PROFILE_ID) 
       references PROFILE (PROFILE_ID)
Hibernate: 
    
    alter table PROF_WEBSITES 
       add constraint FK6690naqgn90wxe58lj8l4xkto 
       foreign key (PROFILE_ID) 
       references PROFILE (PROFILE_ID)
Hibernate: 
    
    alter table PROJECT 
       add constraint FKl81lqy38m478rhxexaug53yax 
       foreign key (WORKEXP_ID) 
       references WORK_EXP (WORKEXP_ID)
Hibernate: 
    
    alter table SKILL 
       add constraint FKt1rsn0cf0a7phoux4upf42uv3 
       foreign key (PROJECT_ID) 
       references PROJECT (PROJECT_ID)
Hibernate: 
    
    alter table WORK_EXP 
       add constraint FKqpqrxsgqtny7rras50sxuxa7b 
       foreign key (PROFILE_ID) 
       references PROFILE (PROFILE_ID)