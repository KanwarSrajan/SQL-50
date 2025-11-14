-- Exercise: Find customers who are not referred by customer with id = 2
-- File: 584_Find_Customer_Referee.sql
-- Description:
--   Return the `name` of customers whose `referee_id` is not equal to 2
--   or whose `referee_id` is NULL (no referee). This excludes customers
--   who were referred by the customer with id = 2.
-- Assumptions:
--   - Table `Customer` exists with at least columns: `name`, `referee_id`.
--   - `referee_id` is either an integer referencing another customer or NULL.

SELECT name
FROM Customer
WHERE referee_id != 2
	OR referee_id IS NULL;
