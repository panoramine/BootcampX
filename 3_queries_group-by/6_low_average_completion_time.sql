SELECT students.name AS student, AVG(assignment_submissions.duration) AS average_assignment_duration, AVG(assignments.duration)
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY AVG(assignment_submissions.duration);