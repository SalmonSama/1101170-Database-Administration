--https://stackoverflow.com/questions/33330968/error-ora-65096-invalid-common-user-or-role-name-in-oracle
--alter session set "_ORACLE_SCRIPT"=true;

CREATE USER HR IDENTIFIED BY hr ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE,
      CREATE SESSION, 
      ALTER SESSION, 
      CREATE TABLE,
      CREATE VIEW, 
      CREATE SEQUENCE, 
      CREATE SYNONYM, 
      CREATE DATABASE LINK, 
      CREATE PROCEDURE,
      CREATE TRIGGER,
      UNLIMITED TABLESPACE
TO HR;

----------------------
-- Check if the user is created
--
SELECT * FROM ALL_USERS;

----------------------
-- Check if the privileges have been granted
--
SELECT PRIVILEGE
FROM DBA_SYS_PRIVS
WHERE GRANTEE = 'HR';