CREATE DATABASE spr1;
USE spr1;

-- 173 page
DROP TABLE tbl_board;
CREATE TABLE tbl_board (
	bno INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content VARCHAR(2000) NOT NULL,
    writer VARCHAR(50) NOT NULL,
    regdate TIMESTAMP DEFAULT NOW(),
    updatedate TIMESTAMP DEFAULT NOW()
);

INSERT INTO tbl_board (title, content, writer)
VALUES ('spring', 'javaspring', 'java');

SELECT * FROM tbl_board;

DELETE FROM tbl_board WHERE bno = 94;

-- 연습
CREATE TABLE tbl_test1 (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
	age INT NOT NULL
);

INSERT INTO tbl_test1 (name, age) VALUES ('qwe', 11);
INSERT INTO tbl_test1 (name, age) VALUES ('asd', 22);
INSERT INTO tbl_test1 (name, age) VALUES ('zxc', 33);

SELECT * FROM tbl_test1;

-- org.zerock.domain.Test1VO
-- org.zerock.mapper.Test1Mapper (interface)
-- org.zerock.mapper.Test1Mapper.xml (xml)
-- Test1Tests






