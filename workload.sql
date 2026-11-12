ALTER SEQUENCE teachers_id_seq OWNED BY Teachers.teacher_id;

CREATE TABLE Workload (
    teacher_id INTEGER,
    discipline_code VARCHAR(20) NOT NULL,
    hourly_rate NUMERIC(10, 2),
    hourly_pay NUMERIC(10, 2),
	
    PRIMARY KEY (teacher_id, discipline_code),
    
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id) ON UPDATE CASCADE ON DELETE CASCADE
);
