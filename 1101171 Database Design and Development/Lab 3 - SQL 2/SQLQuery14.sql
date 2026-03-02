CREATE VIEW DEPSAL AS
SELECT depno, depname, location
FROM dep
WHERE depname = 'finance' OR location = 'silom';