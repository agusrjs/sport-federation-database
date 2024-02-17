/*
Created on Mon Dec 15 09:16:47 2018

Last modification on Sat Feb 15 04:21:19 2024

@author: Agustín Germán Rojas (mail: agustingermanrojas@gmail.com)

The database is organized into several tables to effectively manage and store
information related to a sports federation for visually impaired athletes.
Each table serves a specific purpose, and foreign key relationships are
established to maintain data integrity.

*/

-- Table for entities (clubs, organizations, foundations, associations, etc.)
CREATE TABLE IF NOT EXISTS tbl_entity (
  id_entity INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  short_name VARCHAR(20) NOT NULL,
  foundation DATE NOT NULL, -- Date of establishment
  entity_number INTEGER NOT NULL
);

-- Table for individual players, coaches, etc.
CREATE TABLE IF NOT EXISTS tbl_individual (
  id_individual INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  dni INTEGER NOT NULL, -- ID number
  birth DATE NOT NULL,
  nationality VARCHAR(30) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  visual_classification VARCHAR(2) NOT NULL,
  role VARCHAR(20) NOT NULL
);

-- Table for sports clubs
CREATE TABLE IF NOT EXISTS tbl_club (
  id_club INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_entity INTEGER NOT NULL,
  name VARCHAR(50) NOT NULL,
  short_name VARCHAR(20) NOT NULL,
  acronym VARCHAR(3) NOT NULL,
  FOREIGN KEY (id_entity) REFERENCES tbl_entity(id_entity)
);

-- Table for agreements between entities and individuals
CREATE TABLE IF NOT EXISTS tbl_agreement (
  id_agreement INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  date DATE NOT NULL,
  id_entity INTEGER NOT NULL,
  id_individual INTEGER NOT NULL,
  start DATE NOT NULL,
  end DATE,
  FOREIGN KEY (id_entity) REFERENCES tbl_entity(id_entity),
  FOREIGN KEY (id_individual) REFERENCES tbl_individual(id_individual)
);

-- Table for sports leagues
CREATE TABLE IF NOT EXISTS tbl_league (
  id_league INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  short_name VARCHAR(20) NOT NULL,
  year INTEGER NOT NULL
);

-- Table for sports teams within a league
CREATE TABLE IF NOT EXISTS tbl_team (
  id_team INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_league INTEGER NOT NULL,
  id_club INTEGER NOT NULL,
  position INTEGER,
  FOREIGN KEY (id_league) REFERENCES tbl_league(id_league),
  FOREIGN KEY (id_club) REFERENCES tbl_club(id_club)
);

-- Table for player squads within a team
CREATE TABLE IF NOT EXISTS tbl_squad (
  id_squad INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_team INTEGER NOT NULL,
  id_individual INTEGER NOT NULL,
  national_team BOOLEAN NOT NULL DEFAULT 0,
  FOREIGN KEY (id_team) REFERENCES tbl_team(id_team),
  FOREIGN KEY (id_individual) REFERENCES tbl_individual(id_individual)
);

-- Table for stages within a league
CREATE TABLE IF NOT EXISTS tbl_stage (
  id_stage INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_league INTEGER NOT NULL,
  name VARCHAR(20) NOT NULL,
  FOREIGN KEY (id_league) REFERENCES tbl_league(id_league)
);

-- Table for sports matches within a stage
CREATE TABLE IF NOT EXISTS tbl_match (
  id_match INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_stage INTEGER NOT NULL,
  date DATE NOT NULL,
  place VARCHAR(50),
  FOREIGN KEY (id_stage) REFERENCES tbl_stage(id_stage)
);

-- Table for incidents during a match
CREATE TABLE IF NOT EXISTS tbl_incident (
  id_incident INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_match INTEGER NOT NULL,
  id_squad INTEGER NOT NULL,
  played BOOLEAN,
  goal INTEGER NOT NULL DEFAULT 0,
  yellow_card INTEGER NOT NULL DEFAULT 0,
  red_card INTEGER NOT NULL DEFAULT 0,
  observation VARCHAR(255),
  FOREIGN KEY (id_match) REFERENCES tbl_match(id_match),
  FOREIGN KEY (id_squad) REFERENCES tbl_squad(id_squad)
);

-- Table for contact information associated with entities and individuals
CREATE TABLE IF NOT EXISTS tbl_contact (
  id_contact INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_entity INTEGER,
  id_individual INTEGER,
  address VARCHAR(100),
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  postal_code VARCHAR(6),
  phone INTEGER,
  email VARCHAR(50),
  FOREIGN KEY (id_entity) REFERENCES tbl_entity(id_entity),
  FOREIGN KEY (id_individual) REFERENCES tbl_individual(id_individual)
);

-- Table for groups within a stage
CREATE TABLE IF NOT EXISTS tbl_group (
  id_group INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_stage INTEGER NOT NULL,
  id_team INTEGER NOT NULL,
  FOREIGN KEY (id_stage) REFERENCES tbl_stage(id_stage),
  FOREIGN KEY (id_team) REFERENCES tbl_team(id_team)
);

-- Table for memberships of entities in leagues
CREATE TABLE IF NOT EXISTS tbl_membership (
  id_membership INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_entity INTEGER NOT NULL,
  start DATE NOT NULL,
  end DATE,
  membership_status VARCHAR(9) NOT NULL,
  FOREIGN KEY (id_entity) REFERENCES tbl_entity(id_entity)
);

-- Table for home scores in matches
CREATE TABLE IF NOT EXISTS tbl_home (
  id_home INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_match INTEGER NOT NULL,
  id_team INTEGER NOT NULL,
  home_score INTEGER NOT NULL,
  home_penalty INTEGER,
  FOREIGN KEY (id_match) REFERENCES tbl_match(id_match),
  FOREIGN KEY (id_team) REFERENCES tbl_team(id_team)
);

-- Table for away scores in matches
CREATE TABLE IF NOT EXISTS tbl_away (
  id_away INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_match INTEGER NOT NULL,
  id_team INTEGER NOT NULL,
  away_score INTEGER NOT NULL,
  away_penalty INTEGER,
  FOREIGN KEY (id_match) REFERENCES tbl_match(id_match),
  FOREIGN KEY (id_team) REFERENCES tbl_team(id_team)
);
