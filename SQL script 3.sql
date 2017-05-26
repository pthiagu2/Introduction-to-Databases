-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pthiagu2_Hospital
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pthiagu2_Hospital
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pthiagu2_Hospital` DEFAULT CHARACTER SET latin1 ;
USE `pthiagu2_Hospital` ;

-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Department` (
  `Department_ID` INT(11) NOT NULL,
  `Department_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Department_Type` VARCHAR(45) NULL DEFAULT NULL,
  `Location` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Department_ID`),
  UNIQUE INDEX `Department_ID_UNIQUE` (`Department_ID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Human_Resource`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Human_Resource` (
  `ResourceID` INT(11) NOT NULL,
  `DepartmentID` INT(11) NOT NULL,
  `Resource_FirstName` VARCHAR(45) NULL DEFAULT NULL,
  `Resource_LastName` VARCHAR(45) NULL DEFAULT NULL,
  `Age` INT(11) NULL DEFAULT NULL,
  `Employee_Type` VARCHAR(45) NULL DEFAULT NULL,
  `ContactNumber` INT(11) NULL DEFAULT NULL,
  `Specialization` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`ResourceID`),
  UNIQUE INDEX `ResourceID_UNIQUE` (`ResourceID` ASC),
  UNIQUE INDEX `DepartmentID_UNIQUE` (`DepartmentID` ASC),
  CONSTRAINT `DepartmentID`
    FOREIGN KEY (`DepartmentID`)
    REFERENCES `pthiagu2_Hospital`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Patient` (
  `Patient_ID` INT(11) NOT NULL,
  `First_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Last_Name` VARCHAR(45) NULL DEFAULT NULL,
  `Patient_Age` INT(11) NULL DEFAULT NULL,
  `Patient_Address` VARCHAR(45) NULL DEFAULT NULL,
  `ResourceID` INT(11) NOT NULL,
  `Gender` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`),
  UNIQUE INDEX `Patient_ID_UNIQUE` (`Patient_ID` ASC),
  UNIQUE INDEX `MedStaffID_UNIQUE` (`ResourceID` ASC),
  CONSTRAINT `ResourceID`
    FOREIGN KEY (`ResourceID`)
    REFERENCES `pthiagu2_Hospital`.`Human_Resource` (`ResourceID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Record`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Record` (
  `CatalogID` INT(11) NOT NULL,
  `Record_Description` VARCHAR(45) NULL DEFAULT NULL,
  `Record_Type` VARCHAR(45) NULL DEFAULT NULL,
  `Application` DATE NULL DEFAULT NULL,
  PRIMARY KEY (`CatalogID`),
  UNIQUE INDEX `CatalogID_UNIQUE` (`CatalogID` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Record_has_Human_Resource`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Record_has_Human_Resource` (
  `Record_CatalogID` INT(11) NOT NULL,
  `Human_Resource_ResourceID` INT(11) NOT NULL,
  PRIMARY KEY (`Record_CatalogID`, `Human_Resource_ResourceID`),
  INDEX `fk_Record_has_Human_Resource_Human_Resource1_idx` (`Human_Resource_ResourceID` ASC),
  INDEX `fk_Record_has_Human_Resource_Record1_idx` (`Record_CatalogID` ASC),
  CONSTRAINT `fk_Record_has_Human_Resource_Record1`
    FOREIGN KEY (`Record_CatalogID`)
    REFERENCES `pthiagu2_Hospital`.`Record` (`CatalogID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Record_has_Human_Resource_Human_Resource1`
    FOREIGN KEY (`Human_Resource_ResourceID`)
    REFERENCES `pthiagu2_Hospital`.`Human_Resource` (`ResourceID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `pthiagu2_Hospital`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pthiagu2_Hospital`.`Room` (
  `Room_Type` VARCHAR(45) NULL DEFAULT NULL,
  `RoomID` INT(11) NOT NULL,
  `PatientID` INT(11) NOT NULL,
  `Duration` VARCHAR(45) NULL DEFAULT NULL,
  `Location` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`RoomID`),
  UNIQUE INDEX `MedStaffID_UNIQUE` (`RoomID` ASC),
  UNIQUE INDEX `PatientID_UNIQUE` (`PatientID` ASC),
  CONSTRAINT `PatientID`
    FOREIGN KEY (`PatientID`)
    REFERENCES `pthiagu2_Hospital`.`Patient` (`Patient_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `pthiagu2_Hospital`;

DELIMITER $$
USE `pthiagu2_Hospital`$$
CREATE
DEFINER=`pthiagu2_Hosp`@`10.%.%.%`
TRIGGER `pthiagu2_Hospital`.`ROOM_UPDATE`
BEFORE INSERT ON `pthiagu2_Hospital`.`Room`
FOR EACH ROW
BEGIN 
	IF NEW.Duration > 10 THEN
			   SET NEW.Duration = cast(New.Duration as char);
               SET NEW.Duration = 'Long';
	END IF;
END$$


DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
