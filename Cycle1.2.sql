CREATE TABLE STUDENT
(
  sid int,
  name varchar(20),
  dob date,
  physics int,
  chemistry int,
  maths int
  );
  DESC STUDENT; 
  INSERT INTO STUDENT VALUES
  (1,'Rosmi','1999-05-17',35,56,76),
  (2,'Riya','2000-05-4',75,86,76),
  (3,'Minna','1998-05-17',45,56,76),
  (4,'Jakes','1999-11-9',65,66,86),
   (5,'Seon','1999-11-4',75,46,36);
   SELECT * FROM STUDENT;    
  SELECT sid,name FROM STUDENT  WHERE dob=(SELECT max(dob)from STUDENT);  
  SELECT * FROM STUDENT WHERE maths >=40 and (physics >=40 or chemistry >=40);
  ALTER TABLE STUDENT ADD Total int;
  ALTER TABLE STUDENT ADD Average float(10,3);
  DESC STUDENT;  
 SELECT name FROM STUDENT WHERE maths=(SELECT max(maths) FROM STUDENT);
SELECT name FROM STUDENT WHERE chemistry=(SELECT min(chemistry) FROM STUDENT);
UPDATE STUDENT SET total=physics+chemistry+maths;
SELECT * FROM STUDENT;
SELECT * FROM STUDENT ORDER BY total DESC;
UPDATE STUDENT SET average=total/3;
SELECT * FROM STUDENT;
ALTER TABLE STUDENT RENAME COLUMN average TO avg_mark;
DESC STUDENT;
SELECT AVG(avg_mark) FROM STUDENT;
SELECT name FROM STUDENT WHERE avg_mark > (SELECT AVG(avg_mark) FROM STUDENT);
SELECT COUNT(*) FROM STUDENT WHERE avg_mark > (SELECT AVG(avg_mark) FROM STUDENT);

  


  
