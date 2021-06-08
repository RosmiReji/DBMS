INSERT INTO EMP(empno,ename,job,salary,deptno)VALUES 
(7369,'Smith','clerk',800,20);
SELECT * FROM EMP;
INSERT INTO EMP(empno,ename,job,salary,commision,deptno)VALUES 
(7499,'Allen','Salesman',1600,300,30),
(7521,'Ward','Salesman',1250,500,30);
INSERT INTO EMP(empno,ename,job,salary,deptno)VALUES 
(7566,'Jones','Manager',2975,20);
INSERT INTO EMP(empno,ename,job,salary,commision,deptno)VALUES
(7654,'Martin','Salesman',1250,1400,30);
INSERT INTO EMP(empno,ename,job,salary,deptno)VALUES 
(7698,'Blake','Manager',2850,30),
(7782,'Clark','Manager',2450,10),
(7788, 'SCOTT','Analyst',3000,20),
(7839,'King','President',5000,10),
(7844,'Turner','Salesman',1500,30),
(7876,'Adams','Clerk',1100,20),
(7900,'James','NULL',950,30),
(7902,'Ford','Analyst',3000,20),
(7934,'Miller','CLERK',1300,10);
SELECT * FROM EMP;
UPDATE EMP SET job='Clerk' WHERE job='NULL'; 
 SELECT * FROM EMP;
 TRUNCATE TABLE EMP;
 SELECT * FROM EMP;
ALTER TABLE EMP DROP COLUMN date_join; 
ALTER TABLE EMP ADD COLUMN date_join VARCHAR(20); 
 DESC EMP;
 UPDATE EMP SET date_join='17-DEC-80' WHERE empno=7369;
 UPDATE EMP SET date_join='20-FEB-81'  WHERE empno=7499;
 UPDATE EMP SET date_join='22-FEB-81' WHERE empno=7521;
 UPDATE EMP SET date_join='02-APR-81'WHERE empno=7566;
 UPDATE EMP SET date_join='28-SEP-81' WHERE empno=7654;
 UPDATE EMP SET date_join='01-MAY-81'  WHERE empno=7698;
 UPDATE EMP SET date_join='09-JUN-81'  WHERE empno=7782;
 UPDATE EMP SET date_join='19-APR-87' WHERE empno=7788;
 UPDATE EMP SET date_join='17-NOV-81' WHERE empno=7839;
 UPDATE EMP SET date_join='08-SEP-81' WHERE empno=7844;
 UPDATE EMP SET date_join='23-MAY-87' WHERE empno=7876;
 UPDATE EMP SET date_join='03-DEC-81' WHERE empno=7900;
 UPDATE EMP SET date_join='03-DEC-81' WHERE empno=7902;
 UPDATE EMP SET date_join='23-JAN-8' WHERE empno=7934;
 SELECT * FROM EMP;  
 SELECT DISTINCT job FROM EMP; 
 SELECT ename FROM EMP where deptno IN (20,30);  
 SELECT ename,( salary+IFNULL(commision,0)) as Total_Salary FROM EMP;   
 SELECT ename,(salary*12) as Annual_Salary FROM EMP;
 SELECT ename FROM EMP WHERE date_join='03-DEC-81';
 SELECT ( salary+IFNULL(commision,0)) as Total_Salary FROM EMP WHERE ename='Miller';
 DELETE FROM EMP WHERE ename='Miller';
 SELECT * FROM EMP;  
 SELECT ename,deptno FROM EMP;
ALTER TABLE EMP ADD COLUMN Total_Salary int;
UPDATE EMP SET Total_Salary=(salary+IFNULL(commision,0));
ALTER TABLE EMP DROP COLUMN commision;
DESC EMP;
SELECT E.empno,E.salary FROM EMP E INNER JOIN EMP B ON E.salary=B.salary AND E.empno<>B.empno;  
 SELECT ename as name , empno as emp_id from EMP; 
 ALTER TABLE EMP RENAME TO EMPLOYEE;
 DESC EMPLOYEE;  
CREATE TABLE EMP_TAB AS SELECT * FROM EMPLOYEE;
DESC EMP_TAB;
SELECT distinct e.empno,e.ename,e.job,e.salary,e.deptno,e.date_join,e.total_salary,
b.empno,b.ename,b.job,b.salary,b.deptno,b.date_join,b.total_salary FROM EMP_TAB e  JOIN 
EMPLOYEE b where e.empno=b.empno;
TRUNCATE TABLE  EMPLOYEE;
SELECT * FROM EMPLOYEE;
DROP TABLE EMPLOYEE;


 
 
 
 




