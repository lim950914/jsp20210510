USE test2;

SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Board b JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC;

SELECT b.*, COUNT(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;

SELECT b.id boardId,
	   b.title title,
	   m.name name,
       COUNT(c.id) numberOfComment,
	   b.inserted
FROM Board b 
JOIN Member m 
ON b.memberId = m.id
LEFT JOIN Comment c
ON b.id = c.boardId
GROUP BY b.id
ORDER BY boardId DESC;

SELECT m.*, count(b.id), count(c.id)
FROM Member m LEFT JOIN Board b ON m.id = b.memberId
LEFT JOIN Comment c ON m.id = c.memberId
WHERE m.id = 'asd';

SELECT * FROM Member;
SELECT * FROM Board;

SELECT COUNT(*) FROM Board;
SELECT * FROM Comment WHERE memberId = 'asd';

SELECT COUNT(*) FROM Board WHERE memberId = 'asd';







