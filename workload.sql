-- Создаем генератор чисел для ID нагрузки
CREATE SEQUENCE workload_seq START 1;

CREATE TABLE workload (
    workload_id INTEGER PRIMARY KEY DEFAULT nextval('workload_seq'),
    
    discipline_code VARCHAR(20) NOT NULL,
    
    -- Ограничение целостности: стоимость часа должна быть больше нуля
    cost_per_hour NUMERIC(10, 2) CHECK (cost_per_hour > 0),
    
    hourly_payment NUMERIC(10, 2),
    
    -- Внешний ключ (связь с преподавателем)
    teacher_id INTEGER NOT NULL,
    
    -- Настройка каскадов (Удаление и Обновление)
    CONSTRAINT fk_teacher FOREIGN KEY (teacher_id) 
        REFERENCES teachers(teacher_id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);

-- Привязываем sequence к таблице
ALTER SEQUENCE workload_seq OWNED BY workload.workload_id;