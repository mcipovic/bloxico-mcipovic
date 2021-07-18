CREATE TABLE IF NOT EXISTS project_table(
    id   serial primary key,
    start_date   TIMESTAMP not null
);

INSERT INTO project_table(id,start_date) 
VALUES(DEFAULT, current_timestamp);