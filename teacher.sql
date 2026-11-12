CREATE SEQUENCE teachers_id_seq START WITH 1 INCREMENT BY 1;

CREATE TABLE Teachers (
    teacher_id SERIAL PRIMARY KEY, 
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    education VARCHAR(100),
    experience INTEGER,
    department_id INTEGER,
    phone_number VARCHAR(20)
);
