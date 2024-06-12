-- Create the database
CREATE DATABASE phpdb;

-- Use the newly created database
USE phpdb;

-- Create the users table
CREATE TABLE users (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Insert a test user (the password should be hashed, see note below)
INSERT INTO users (username, password) VALUES ('admin', 'admin12345');

-- Create a new MySQL user with a specified password
CREATE USER 'php_user'@'localhost' IDENTIFIED BY 'xkP1s11Nc£7&';

-- Grant the new user the ability to create, edit, and delete on your_db_name
GRANT ALL PRIVILEGES ON phpdb.* TO 'php_user'@'localhost' WITH GRANT OPTION;

-- Apply the changes
FLUSH PRIVILEGES;