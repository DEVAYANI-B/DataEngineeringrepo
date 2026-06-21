USE expense_tracker;
INSERT INTO expenses (user_id, category_id, amount, expense_date, notes)
VALUES (1, 4, 250.00, '2026-01-22', 'Cab to airport');
SELECT e.expense_id, c.category_name, e.amount, e.expense_date, e.notes
FROM expenses e
JOIN categories c ON e.category_id = c.category_id
WHERE e.user_id = 1
ORDER BY e.expense_date DESC;
UPDATE expenses
SET amount = 275.00
WHERE expense_id = 1;
DELETE FROM expenses
WHERE expense_id = 16;
SELECT u.full_name, SUM(e.amount) AS total_spent
FROM expenses e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.full_name;
