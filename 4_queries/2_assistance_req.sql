SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assignments JOIN assistance_requests ON assignments.id = assignment_id
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
ORDER BY duration;