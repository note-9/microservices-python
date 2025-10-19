-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS auth;

-- Use the database
USE auth;

-- Drop user if it exists and recreate
DROP USER IF EXISTS 'auth_user'@'localhost';
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Aauth123';

-- Grant all privileges on the 'auth' database to the user
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert initial user (optional: use INSERT IGNORE to prevent duplicates)
INSERT INTO user (email, password) 
VALUES ('heemanshbhawsar2004@gmail.com','Admin123')

