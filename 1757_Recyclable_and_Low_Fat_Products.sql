-- Exercise: List product IDs that are both low fat and recyclable
-- File: 1757_Recyclable_and_Low_Fat_Products.sql
-- Description:
--   Return the `product_id` of products where both `low_fats` and
--   `recyclable` flags are set to 'Y'.
-- Assumptions:
--   - Table `Products` exists with at least columns: `product_id`,
--     `low_fats`, and `recyclable`.

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
	AND recyclable = 'Y';