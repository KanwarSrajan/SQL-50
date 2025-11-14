-- Exercise: List large countries by area or population
-- File: 595_Big_Countries.sql
-- Description:
--   Return the `name`, `population`, and `area` for countries that are
--   considered "big" by either of two criteria:
--     - `area` greater than or equal to 3,000,000 (units as stored in `World`,
--       commonly square kilometers), OR
--     - `population` greater than or equal to 25,000,000.
-- Notes:
--   - Comparisons are inclusive (>=). Adjust thresholds as needed.
--   - Assumes table `World` has columns: `name`, `population`, `area`.

SELECT name,
		 population,
		 area
FROM World
-- select countries with very large area OR large population
WHERE area >= 3000000
	OR population >= 25000000;