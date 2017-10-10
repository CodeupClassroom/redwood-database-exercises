CREATE TABLE employees (
  name                   VARCHAR(150),
  addreess               VARCHAR(300),
  age                    TINYINT UNSIGNED,
  job_description        TEXT,
  birthday               DATE,
  salary                 DECIMAL(10, 2) UNSIGNED,
  social_security_number CHAR(11),
  is_full_time           BOOLEAN,
  created_at             DATETIME
);
