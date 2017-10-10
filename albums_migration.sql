USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id           INT UNSIGNED   NOT NULL AUTO_INCREMENT,
  artist       VARCHAR(200)   NOT NULL,
  name         VARCHAR(300)   NOT NULL,
  release_date DATE           NOT NULL,
  sales        DECIMAL(10, 2) NOT NULL,
  genre        VARCHAR(50)    NOT NULL,
  PRIMARY KEY (id)
);
