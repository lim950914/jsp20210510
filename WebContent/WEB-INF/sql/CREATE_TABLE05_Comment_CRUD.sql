USE test2;

DROP TABLE IF EXISTS Comment; -- table가 있으면 drop 없으면 no

CREATE TABLE Comment
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	comment VARCHAR(2047) NOT NULL,
    memberId VARCHAR(255) NOT NULL,
    boardId INT NOT NULL,
    inserted TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY (memberId) REFERENCES Member(id),
    FOREIGN KEY (boardId) REFERENCES Board(id)
); 

SELECT * FROM Comment;
