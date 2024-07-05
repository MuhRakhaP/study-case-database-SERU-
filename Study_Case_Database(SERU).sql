1)
SELECT
  s.name AS student_name,
  c.name AS class_name,
  t.name AS teacher_name
FROM students AS s
JOIN classes AS c ON s.class_id = c.id
JOIN teachers AS t ON c.teacher_id = t.id;

2)
SELECT a.name as nama_kelas, b.name as nama_guru FROM classes as a
LEFT JOIN teachers as b on a.teacher_id = b.id
GROUP BY a.name, b.name

3)
CREATE VIEW student_class_teacher AS
SELECT
  s.name AS student_name,
  c.name AS class_name,
  t.name AS teacher_name
FROM students AS s
JOIN classes AS c ON s.class_id = c.id
JOIN teachers AS t ON c.teacher_id = t.id;

4)
DELIMITER $$

CREATE PROCEDURE get_student_class_teacher()
BEGIN
    SELECT
        s.name AS student_name,
        c.name AS class_name,
        t.name AS teacher_name
    FROM students AS s
    JOIN classes AS c ON s.class_id = c.id
    JOIN teachers AS t ON c.teacher_id = t.id;
END $$

DELIMITER ;

5)
INSERT IGNORE INTO students (name, age, class_id)
VALUES ('Budi', 19, 7),
      ('Ani', 12, 5),
      ('Candra', 13, 1),
      ('Candra', 13, 1);