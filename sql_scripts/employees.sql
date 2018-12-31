--  Sample employee database 
--  See changelog table for details
--  Copyright (C) 2007,2008, MySQL AB
--  
--  Original data created by Fusheng Wang and Carlo Zaniolo
--  http://www.cs.aau.dk/TimeCenter/software.htm
--  http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip
-- 
--  Current schema by Giuseppe Maxia 
--  Data conversion from XML to relational by Patrick Crews
-- 
-- This work is licensed under the 
-- Creative Commons Attribution-Share Alike 3.0 Unported License. 
-- To view a copy of this license, visit 
-- http://creativecommons.org/licenses/by-sa/3.0/ or send a letter to 
-- Creative Commons, 171 Second Street, Suite 300, San Francisco, 
-- California, 94105, USA.
-- 
--  DISCLAIMER
--  To the best of our knowledge, this data is fabricated, and
--  it does not correspond to real people. 
--  Any similarity to existing people is purely coincidental.
-- 

DROP DATABASE IF EXISTS employees;
CREATE DATABASE IF NOT EXISTS employees;
USE employees;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS employees;

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;
CREATE TABLE `phpdev`.`employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `employee_fname` VARCHAR(45) NULL DEFAULT '',
  `employee_lname` VARCHAR(45) NULL DEFAULT '',
  `employee_mname` VARCHAR(45) NULL DEFAULT '',
  `employee_suffix` VARCHAR(45) NULL DEFAULT '',
  `employee_maiden_name` VARCHAR(45) NULL DEFAULT '',
  `employee_dob` DATETIME NULL DEFAULT '1900-01-01',
  `employee_gender` VARCHAR(15) NULL DEFAULT '',
  `employee_id_number` VARCHAR(8) NULL DEFAULT '00000000',
  PRIMARY KEY (`employee_id`)
);

SELECT 'INSERTING EMPLOYEES' as 'INFO';

INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('John', 'Smith', 'Daniel', '00000001', '1970-03-12', 'MALE');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('Sarah', 'Yamamoto', 'Erika', '00000002', '1979-03-12', 'FEMALE');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('Connor', 'Daniels', 'Jackson', '00000003', '1982-04-03', 'MALE');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('Jessica', 'Parminder', 'Colleen', '00000004', '1988-11-28', 'FEMALE');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('Tanya', 'Ishikawa', 'Kimiko', '00000005', '1995-07-14', 'FEMALE');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`, `employee_gender`) VALUES ('Jacob', 'Yang', 'Christopher', '00000006', '1993-10-22', 'MALE');



flush /*!50503 binary */ logs;

