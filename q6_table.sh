#!/bin/bash

echo "Enter your first name"
read first_name

echo "Enter your last name"
read last_name

echo "Enter your dob"
read dob

output=`mysql -h 127.0.0.1 -u root -ppassword -e "
DROP DATABASE IF EXISTS test;
CREATE DATABASE test;
USE test;
CREATE TABLE details (
    first_name VARCHAR(100), 
    last_name VARCHAR(100), 
    dob DATE
);
INSERT INTO details(first_name, last_name, dob) VALUES (\"$first_name\", \"$last_name\", \"$dob\");
SELECT * FROM details;
"`
echo $output