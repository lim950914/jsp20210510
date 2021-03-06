USE test;

CREATE TABLE Table05
(
name VARCHAR(255) PRIMARY KEY,
money INT NOT NULL DEFAULT 0
);

INSERT INTO Table05 (name, money) VALUES ('kim', 10000);
INSERT INTO Table05 (name, money) VALUES ('lee', 10000);

SELECT * FROM Table05;

-- 1
UPDATE Table05
SET money = 5000
WHERE name = 'kim';

-- 2
SELECT * FROM Table05;

-- 3
ROLLBACK; -- 원복(오토커밋 언체크일때만)

-- 4
SELECT * FROM Table05;

-- 동시 실행
UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 15000
WHERE name = 'lee';

COMMIT; -- db반영

SELECT * FROM Table05;