-- CREATE UAT TABLE
CREATE TABLE IF NOT EXISTS uat(
	fid SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50)NOT NULL,
	siruta INTEGER NULL,
	judete_fid INTEGER, --fk
	FOREIGN KEY(judete_fid)REFERENCES judete
);

SELECT * FROM uat;