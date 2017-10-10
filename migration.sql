USE codeup_test_db;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS quotes;

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

CREATE TABLE quotes (
  id                INT UNSIGNED NOT NULL AUTO_INCREMENT,
  author_first_name VARCHAR(50)           DEFAULT 'NONE',
  author_last_name  VARCHAR(100) NOT NULL,
  content           TEXT         NOT NULL,
  PRIMARY KEY (id)
);
