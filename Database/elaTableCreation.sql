SELECT * FROM ela_data;
SELECT * FROM  demographics;
--joining tables for ela machine learning model
SELECT ed.student_id,
		ed.fall_diag,
		ed.winter_diag,
		al.fsa_ela,
		d.gender,
		d.ethnicity,
		ews.retained,
		ews.attendance,
		ews.behavior
INTO ela_ml
from ela_data as ed
INNER JOIN achievement_levels as al
ON (ed.student_id = al.student_id)
INNER JOIN demographics as d
ON (ed.student_id = d.student_id)
INNER JOIN ews_data as ews
ON (ed.student_id = ews.student_id);