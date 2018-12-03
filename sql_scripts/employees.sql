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
  PRIMARY KEY (`employee_id`))
ENGINE = InnoDB;



INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`) VALUES ('John', 'Smith', 'Daniel', '00000001', '1970-03-12');
INSERT INTO `phpdev`.`employees` (`employee_fname`, `employee_lname`, `employee_mname`, `employee_id_number`, `employee_dob`) VALUES ('Sarah', 'Yamamoto', 'Erika', '00000002', '1979-03-12');