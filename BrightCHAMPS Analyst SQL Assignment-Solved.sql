
-- First I have downloaded GoogleSheet to Excel file and, did some data cleaning in it.
-- I have created this Assignment using Microsoft SQL Server.
-- I have imported edited Excel to MicroSoft SQL Server and created this querry according to the given instruction.

-- I used some Inner Join and Self Join to execute this querry.
----------------------------------------------------------------
SELECT teacher2.id as teacher_id, teacher2.name_edited as teachers_name, country_code, teacher2.number as teachers_number, teacher2.email as teachers_email, vertical_id as teachers_verticalID, CAST(teacher.[date_added edited] as date) as date_added, teacher2.team_lead_id, teacher.name_edited as team_lead_name, teacher.email as team_lead_email
FROM Assignment..Teachers_Edited teacher
JOIN Assignment..Teachers_Edited teacher2
	ON teacher.id = teacher2.team_lead_id
JOIN Assignment..Teacher_Mapped_Verticals teachermap
	ON teacher.id = teachermap.teacher_id
JOIN Assignment..Countries con
	ON teacher.teachers_country = con.id
WHERE vertical_id = 1
ORDER BY teacher2.id