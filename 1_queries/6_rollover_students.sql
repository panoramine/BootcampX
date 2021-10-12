SELECT students.name as students_names, cohorts.name as cohort_name, students.start_date as student_start_date, cohorts.start_date as cohort_start_date
FROM students 
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohorts.start_date;