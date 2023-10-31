-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema hostel_management
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hostel_management
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hostel_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `hostel_management` ;

-- -----------------------------------------------------
-- Table `hostel_management`.`student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_management`.`student` (
  `StudentID` INT NOT NULL,
  `Name` VARCHAR(60) NOT NULL,
  `Gender` VARCHAR(1) NOT NULL,
  `Contact_no` FLOAT NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE INDEX `StudentID_UNIQUE` (`StudentID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hostel_management`.`fees`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_management`.`fees` (
  `PaymentID` INT NOT NULL,
  `StudentID` INT NOT NULL,
  `PaymentDate` DATE NULL DEFAULT NULL,
  `Amount` INT NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  UNIQUE INDEX `PaymentID_UNIQUE` (`PaymentID` ASC) VISIBLE,
  INDEX `StudentID_idx` (`StudentID` ASC) VISIBLE,
  CONSTRAINT `StudentID`
    FOREIGN KEY (`StudentID`)
    REFERENCES `hostel_management`.`student` (`StudentID`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hostel_management`.`hostel`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_management`.`hostel` (
  `HostelID` INT NOT NULL,
  `HostelName` VARCHAR(100) NOT NULL,
  `No_of_Rooms` INT NOT NULL,
  `WardenID` INT NOT NULL,
  PRIMARY KEY (`HostelID`),
  UNIQUE INDEX `HostelID_UNIQUE` (`HostelID` ASC) VISIBLE,
  UNIQUE INDEX `HostelName_UNIQUE` (`HostelName` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hostel_management`.`room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_management`.`room` (
  `RoomNo` INT NOT NULL,
  `AC/NonAC` VARCHAR(45) NOT NULL,
  `Capacity` INT NOT NULL,
  `OccupancyStatus` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`RoomNo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `hostel_management`.`staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hostel_management`.`staff` (
  `StaffID` INT NOT NULL,
  `Name` VARCHAR(60) NOT NULL,
  `Position` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`StaffID`),
  UNIQUE INDEX `StaffID_UNIQUE` (`StaffID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
