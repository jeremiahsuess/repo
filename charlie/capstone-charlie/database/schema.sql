-- *************************************************************************************************
-- This script creates all of the database objects (tables, sequences, etc) for the database
-- *************************************************************************************************

BEGIN;

-- CREATE statements go here


CREATE SEQUENCE users_user_id_seq
INCREMENT BY 1
NO MAXVALUE
NO MINVALUE
CACHE 1;

CREATE TABLE users 
(
user_id INTEGER DEFAULT  NEXTVAL ('users_user_id_seq'::regclass) NOT NULL,
login_name VARCHAR(24),
email_id VARCHAR (200) NOT NULL,
password VARCHAR (200),
role_id INTEGER NOT NULL,
salt_code VARCHAR (200),
cohort INTEGER,
CONSTRAINT capstone_user_id PRIMARY KEY (user_id)
);

CREATE SEQUENCE admins_admin_id_seq
INCREMENT BY 1
NO MAXVALUE
NO MINVALUE
CACHE 1;

CREATE TABLE admins 
(
admin_id INTEGER DEFAULT  NEXTVAL ('admins_admin_id_seq'::regclass) NOT NULL,
user_id INTEGER NOT NULL,
first_name VARCHAR (20) NOT NULL,
last_name VARCHAR (20) NOT NULL,
CONSTRAINT admin_admin_id PRIMARY KEY (admin_id),
CONSTRAINT admin_user_id FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE SEQUENCE students_student_id_seq
INCREMENT BY 1
NO MAXVALUE
NO MINVALUE
CACHE 1;

CREATE TABLE students 
(
student_id INTEGER DEFAULT  NEXTVAL ('students_student_id_seq'::regclass) NOT NULL,
first_name VARCHAR (20) NOT NULL,
last_name VARCHAR (20) NOT NULL,
summary VARCHAR (1000),
email_id VARCHAR (500),
user_id INTEGER NOT NULL,
academic_background VARCHAR (20),
soft_skills VARCHAR (1000),
phone_number VARCHAR (50),
interests VARCHAR (1000),
public BOOLEAN,
industry_experience BOOLEAN,
CONSTRAINT students_student_id PRIMARY KEY (student_id),
CONSTRAINT students_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE SEQUENCE employers_employer_id_seq
INCREMENT BY 1
NO MAXVALUE
NO MINVALUE
CACHE 1;

CREATE TABLE employers 
(
employer_id INTEGER DEFAULT  NEXTVAL ('employers_employer_id_seq'::regclass) NOT NULL,
user_id INTEGER NOT NULL,
name VARCHAR (50) NOT NULL,
CONSTRAINT employers_employer_id PRIMARY KEY (employer_id),
CONSTRAINT employers_user_id FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE SEQUENCE portfolios_portfolio_id_seq
INCREMENT BY 1
NO MAXVALUE
NO MINVALUE
CACHE 1;

CREATE TABLE portfolios 
(
portfolio_id INTEGER DEFAULT NEXTVAL ('portfolios_portfolio_id_seq'::regclass) NOT NULL,
student_id INTEGER NOT NULL,
project_name VARCHAR (500),
project_description VARCHAR (5000),
technology_used VARCHAR (5000),
source_code_link VARCHAR (200),
is_group_project BOOLEAN,
CONSTRAINT portfolios_portfolio_id PRIMARY KEY (portfolio_id),
CONSTRAINT portfolios_student_id FOREIGN KEY (student_id) REFERENCES students (student_id)
);

COMMIT;