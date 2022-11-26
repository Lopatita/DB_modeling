-- CREATE populatie_judet

CREATE TABLE IF NOT EXISTS populatie_judet(
    id SERIAL PRIMARY KEY NOT NULL,
	year DATE UNIQUE NOT NULL,
	value INTEGER NOT NULL,
	judete_fid INTEGER NOT NULL
);

-- AD DATA TO TABLE
INSERT INTO populatie_judet(year, value, judete_fid)VALUES
('2022-12-12',500000,1),
('2001-12-12',600000,1),
('2002-12-12',700000,1);
ALTER TABLE populatie_judet ADD FOREIGN KEY (judete_fid) REFERENCES judete;
ALTER TABLE populatie_judet ADD COLUMN user_name VARCHAR(50) NOT NULL DEFAULT '';

SELECT * FROM populatie_judet;