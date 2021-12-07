//Run this document to create the database on your end (I can't upload the full database, so just run this and you should be good).
//If you get any errors related to syntax, then try deleting all comments and then rerunning the statements.

ALTER TABLE users ADD email VARCHAR(255);
//Adds email column to the users table

DROP TABLE person;
//Adds last name to person table

UPDATE person
SET last_name = 'Impellicieri'
WHERE name = 'Walt';
//To whoever built this table, Walt has a last name.

CREATE TABLE cohort (
cohort_id SERIAL,
programming_language VARCHAR(255),
PRIMARY KEY (cohort_id)
);
//Creates cohort table

CREATE TABLE cohort-student (
cohort_id INT,
profile_id INT,
PRIMARY KEY (profile_id),
FOREIGN KEY (profile_id) REFERENCES profile(profile_id),
FOREIGN KEY (cohort_id) REFERENCES cohort(cohort_id)
);
//Creates cohort to student table

CREATE TABLE profile (
profile_id SERIAL,
user_id INT,
portfolio_id SERIAL,
first_name VARCHAR(255),
last_name VARCHAR(255),
summary VARCHAR(255),
is_published BOOLEAN,
PRIMARY KEY (profile_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);
//Creates profile table

CREATE TABLE portfolio_links(
portfolio_link_id SERIAL,
description VARCHAR(255),
file_name VARCHAR(255),
source_code VARCHAR(255),
PRIMARY KEY (portfolio_link_id)
);
//Creates table of all portfolio links.

CREATE TABLE portfolio_portfolio_links(
portfolio_id INT,
portfolio_link_id INT,
FOREIGN KEY (portfolio_id) REFERENCES profile(profile_id),
FOREIGN KEY (portfolio_link_id) REFERENCES portfolio_links(portfolio_link_id)
);
//Creates table joining portfolios to their respective portfolio links

CREATE TABLE degree(
degree_id SERIAL,
institution_name VARCHAR(255),
level VARCHAR(255),
degree_type VARCHAR(255),
subject_area VARCHAR(255),
PRIMARY KEY (degree_id)
);
//Creates table of degrees students have earned

CREATE TABLE profile_degree(
profile_id INT,
degree_id INT,
PRIMARY KEY (degree_id),
FOREIGN KEY (profile_id) REFERENCES profile(profile_id),
FOREIGN KEY (degree_id) REFERENCES degree(degree_id)
);
//Creates table joining degrees to their respective profiles

CREATE TABLE career_experience(
entry_id SERIAL,
experience_title VARCHAR(255),
organization_name VARCHAR(255),
date_started DATE,
date_ended DATE,
description VARCHAR(255),
PRIMARY KEY (entry_id)
);
//Creates table of all career experiences entered

CREATE TABLE profile_career_experience(
profile_id INT,
career_experience_id INT,
PRIMARY KEY (career_experience_id),
FOREIGN KEY (career_experience_id) REFERENCES career_experience(entry_id),
FOREIGN KEY (profile_id) REFERENCES profile(profile_id)
);
//Creates table joining career experiences to their respective tables
