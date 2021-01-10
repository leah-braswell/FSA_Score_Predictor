SELECT * FROM math_data;
SELECT * FROM  demographics;
--joining tables for math machine learning model
SELECT md.student_id,
		md.fall_diag,
		md.winter_diag,
		al.fsa_math,
		d.gender,
		d.ethnicity,
		ews.retained,
		ews.attendance,
		ews.behavior
INTO math_ml
from math_data as md
INNER JOIN achievement_levels as al
ON (md.student_id = al.student_id)
INNER JOIN demographics as d
ON (md.student_id = d.student_id)
INNER JOIN ews_data as ews
ON (md.student_id = ews.student_id);
