USE codeup_test_db;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
  id                     INT UNSIGNED            NOT NULL AUTO_INCREMENT,
  name                   VARCHAR(150)            NOT NULL,
  address                VARCHAR(300)            NOT NULL,
  age                    TINYINT UNSIGNED                 DEFAULT 0,
  job_description        TEXT,
  birthday               DATE,
  salary                 DECIMAL(10, 2) UNSIGNED NOT NULL,
  social_security_number CHAR(11)                NOT NULL,
  is_full_time           BOOLEAN                 NOT NULL,
  created_at             DATETIME                NOT NULL,
  PRIMARY KEY (id)
);
