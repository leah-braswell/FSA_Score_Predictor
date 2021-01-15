-- Creating Tables for FSA_DB
CREATE TABLE demographics (
	student_id bigint NOT NULL,
	gender VARCHAR(1) NOT NULL,
	ethnicity VARCHAR(20) NOT NULL,
	PRIMARY KEY (student_id)
	);
	
CREATE TABLE ews_data (
	student_id bigint NOT NULL,
	retained varchar(3) NOT NULL,
	attendance varchar(3) NOT NULL,
	behavior varchar(3) NOT NULL,
	FOREIGN KEY (student_id) REFERENCES demographics(student_id),
	PRIMARY KEY (student_id)
);

CREATE TABLE achievement_levels (
	student_id bigint NOT NULL,
	fsa_ela int NOT NULL,
	fsa_math int NOT NULL,
	FOREIGN KEY (student_id) REFERENCES demographics(student_id),
	PRIMARY KEY (student_id)
);

CREATE TABLE ela_data (
	student_id bigint NOT NULL,
	fall_diag int NOT NULL,
	winter_diag int NOT NULL,
	FOREIGN KEY (student_id) REFERENCES demographics(student_id),
	PRIMARY KEY (student_id)
);

CREATE TABLE math_data (
	student_id bigint NOT NULL,
	fall_diag int NOT NULL,
	winter_diag int NOT NULL,
	FOREIGN KEY (student_id) REFERENCES demographics(student_id),
	PRIMARY KEY (student_id)
);

