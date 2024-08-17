-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Final_Assesment
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Final_Assesment
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Final_Assesment` DEFAULT CHARACTER SET utf8 ;
USE `Final_Assesment` ;

-- -----------------------------------------------------
-- Table `Final_Assesment`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final_Assesment`.`Orders` (
  `Order_ID` INT NOT NULL AUTO_INCREMENT,
  `Order_Date` DATE NOT NULL,
  `Ship_Date` DATE NOT NULL,
  PRIMARY KEY (`Order_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final_Assesment`.`Sales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final_Assesment`.`Sales` (
  `Sales` DECIMAL NOT NULL,
  `Quantity` INT NOT NULL,
  `Address_city` VARCHAR(45) NOT NULL,
  `Product_Id` VARCHAR(45) NOT NULL,
  `Order` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Sales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final_Assesment`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final_Assesment`.`Order` (
  `Order_id` INT NOT NULL AUTO_INCREMENT,
  `Order_Date` DATE NOT NULL,
  `Ship_date` DATE NOT NULL,
  `Total_Cost` VARCHAR(20) NOT NULL,
  `Ordercol` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Order_id`),
  CONSTRAINT `Order_Id_fk`
    FOREIGN KEY ()
    REFERENCES `Final_Assesment`.`Sales` ()
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final_Assesment`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final_Assesment`.`Product` (
  `Product_ID` INT NOT NULL AUTO_INCREMENT,
  `Category` VARCHAR(45) NOT NULL,
  `SubCategory` VARCHAR(45) NOT NULL,
  `Productcol1` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  CONSTRAINT `Product_Id_fk`
    FOREIGN KEY ()
    REFERENCES `Final_Assesment`.`Sales` ()
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Final_Assesment`.`Location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Final_Assesment`.`Location` (
  `City` VARCHAR(255) NOT NULL,
  `District` VARCHAR(45) NOT NULL,
  `State` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`City`),
  CONSTRAINT `City_fk`
    FOREIGN KEY ()
    REFERENCES `Final_Assesment`.`Sales` ()
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
