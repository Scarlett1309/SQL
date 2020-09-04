
drop table employeeTask_iso;
drop sequence employeeTaskID_seq;
drop table task_iso;
drop sequence taskID_seq;
drop table project_iso;
drop sequence projectID_seq;
drop table employee_iso;
drop sequence employeeID_seq;

CREATE TABLE employee_iso(
employeeID  NUMBER  NOT NULL,
firstName   varchar(56) NOT NULL,
middleName  varchar(112)    ,
lastName    varchar(56) NOT NULL,
chargeRate  NUMBER      NOT NULL,
CONSTRAINT PK_employeeID PRIMARY KEY(employeeID)
);

CREATE SEQUENCE employeeID_seq
    START WITH 10000
    INCREMENT BY 10;
    

CREATE TABLE project_iso(
projectID   NUMBER  NOT NULL,
projDescription     varchar(512)    NOT NULL,
CONSTRAINT PK_projectID PRIMARY KEY(projectID)
);

CREATE SEQUENCE projectID_seq
    START WITH 1
    INCREMENT BY 1;
    
    
CREATE TABLE task_iso(
taskID      NUMBER      NOT NULL,
projectID   NUMBER      NOT NULL,
taskDescription varchar(112) NOT NULL,
CONSTRAINT PK_taskID PRIMARY KEY (taskID),
CONSTRAINT FK_projectID FOREIGN KEY (projectID) REFERENCES project_iso (projectID)
);

CREATE SEQUENCE taskID_seq
    START WITH 1
    INCREMENT BY 1;
    
    
    
CREATE TABLE employeeTask_iso(
employeeTaskID      NUMBER      NOT NULL,
taskID              NUMBER      NOT NULL,
employeeID          NUMBER      NOT NULL,
hours               NUMBER      NOT NULL,
CONSTRAINT PK_employeeTaskID PRIMARY KEY (employeeTaskID),
CONSTRAINT FK_taskID FOREIGN KEY(taskID) REFERENCES task_iso (taskID),
CONSTRAINT FK_employeeID FOREIGN KEY(employeeID) REFERENCES employee_iso (employeeID)
);


CREATE SEQUENCE employeeTaskID_seq
    START WITH 1
    INCREMENT BY 1;
 

INSERT INTO employee_iso
VALUES 
(employeeID_seq.nextval,
'Cornel',
'Nel',
'Popescu',
50.00
);

INSERT INTO employee_iso
VALUES 
(employeeID_seq.nextval,
'Salut',
NULL,
'Are',
40.00
);

INSERT INTO employee_iso
VALUES 
(employeeID_seq.nextval,
'Viorel',
'Rel',
'Pescu',
40.00
);

INSERT INTO employee_iso
VALUES 
(employeeID_seq.nextval,
'George',
NULL,
'Simion',
43.00
);

SELECT *
FROM employee_iso;

    
INSERT INTO project_iso
VALUES
(projectID_seq.nextval, 
'Create a system which will record employee clockablehours'
);

    INSERT INTO task_iso
    VALUES
    (taskID_seq.nextval, 
    projectID_seq.currval,
    'Create a logical design' || 'Decide on what platform to develop'
    );

    INSERT INTO task_iso
    VALUES
    (
    taskID_seq.nextval,
    projectID_seq.currval,
    'Create a physical design'
    );

INSERT INTO project_iso
VALUES
(projectID_seq.nextval, 
'Create a game'
);

    INSERT INTO task_iso
    VALUES
    (taskID_seq.nextval, 
    projectID_seq.currval,
    'Create a logical design ' || ' Decide on what platform to develop'
    );

    INSERT INTO task_iso
    VALUES
    (
    taskID_seq.nextval,
    projectID_seq.currval,
    'Create a physical design'
    );


INSERT INTO project_iso
VALUES
(projectID_seq.nextval, 
'Create an app'
);

    INSERT INTO task_iso
    VALUES
    (taskID_seq.nextval, 
    projectID_seq.currval,
    'Create a logical design ' || ' Decide on what platform to develop'
    );

    INSERT INTO task_iso
    VALUES
    (
    taskID_seq.nextval,
    projectID_seq.currval,
    'Create a physical design'
    );
    

INSERT INTO project_iso
VALUES
(projectID_seq.nextval, 
'Create a database for the players'
);

    INSERT INTO task_iso
    VALUES
    (taskID_seq.nextval, 
    projectID_seq.currval,
    'Create a logical design ' || ' Decide on what platform to develop'
    );

    INSERT INTO task_iso
    VALUES
    (
    taskID_seq.nextval,
    projectID_seq.currval,
    'Create a physical design'
    );

SELECT *
FROM project_iso;


SELECT *
FROM task_iso;

INSERT INTO employeeTask_iso
VALUES
(
employeeTaskID_seq.nextval,
1, 
10000,
12.5);


INSERT INTO employeeTask_iso
VALUES
(
employeeTaskID_seq.nextval,
1, 
10000,
12.5);


INSERT INTO employeeTask_iso
VALUES
(
employeeTaskID_seq.nextval,
1, 
10010,
8);


INSERT INTO employeeTask_iso
VALUES
(
employeeTaskID_seq.nextval,
1, 
10020,
25);


INSERT INTO employeeTask_iso
VALUES
(
employeeTaskID_seq.nextval,
1, 
10030,
20);


SELECT *
FROM employeeTask_iso;
