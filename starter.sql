SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    v_StudentID Student.StudentID%TYPE;
    v_StudentName Student.StudentName%TYPE;
    v_DepartmentID Student.DepartmentID%TYPE;

BEGIN
    OPEN student_cursor;

    LOOP
        FETCH student_cursor
        INTO v_StudentID, v_StudentName, v_DepartmentID;

        EXIT WHEN student_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'StudentID: ' || v_StudentID ||
            ' StudentName: ' || v_StudentName ||
            ' DepartmentID: ' || v_DepartmentID
        );
    END LOOP;

    CLOSE student_cursor;
END;
/-- PL/SQL Cursor Assignment
-- Create a cursor to fetch StudentID, StudentName,
-- and DepartmentID from the Student table
-- and display the records.

CREATE TABLE Student (
StudentID NUMBER(5) PRIMARY KEY,
StudentName VARCHAR2(20),
DepartmentID NUMBER(5)
);

INSERT INTO Student VALUES (1001, 'Arun', 101);
INSERT INTO Student VALUES (1002, 'Divya', 102);
INSERT INTO Student VALUES (1003, 'Karthik', 101);

COMMIT;

-- Write your PL/SQL program below.

DECLARE

```
-- Declare cursor here
```

BEGIN

```
-- Open cursor
-- Fetch records
-- Display records
-- Close cursor

NULL;
```

END;
/
