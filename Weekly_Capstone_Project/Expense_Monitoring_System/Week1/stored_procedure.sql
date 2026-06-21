USE expense_tracker;

DROP PROCEDURE IF EXISTS monthly_total_by_category;

DELIMITER //

CREATE PROCEDURE monthly_total_by_category(
    IN p_user_id INT,
    IN p_month   INT,
    IN p_year    INT
)
BEGIN
    SELECT
        c.category_name,
        SUM(e.amount) AS total_spent
    FROM expenses e
    JOIN categories c ON e.category_id = c.category_id
    WHERE e.user_id = p_user_id
      AND MONTH(e.expense_date) = p_month
      AND YEAR(e.expense_date) = p_year
    GROUP BY c.category_name
    ORDER BY total_spent DESC;
END //

DELIMITER ;

