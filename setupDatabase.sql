/*! run this script using root user*/
CREATE DATABASE financialwebapp;
CREATE USER 'financialwebapp'@'localhost' IDENTIFIED BY 'financialwebapp';
GRANT SELECT, INSERT, UPDATE, DELETE ON financialwebapp.* TO 'financialwebapp'@'localhost';
USE financialwebapp;
CREATE TABLE users (username VARCHAR(255), password VARCHAR(255), zip INTEGER);