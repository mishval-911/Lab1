-- Создаем генератор чисел для ID преподавателей
CREATE SEQUENCE teachers_seq START 1;

CREATE TABLE teachers (
    -- Тип integer, автоинкремент через sequence
    teacher_id INTEGER PRIMARY KEY DEFAULT nextval('teachers_seq'),
    
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    
    education VARCHAR(100) NOT NULL,
    
    -- Ограничение целостности: стаж не может быть отрицательным
    experience_years INTEGER CHECK (experience_years >= 0),
    
    department_number INTEGER NOT NULL,
    
    -- Ограничение целостности: телефон должен быть уникальным
    contact_phone VARCHAR(20) UNIQUE
);

-- Привязываем sequence к таблице
ALTER SEQUENCE teachers_seq OWNED BY teachers.teacher_id;