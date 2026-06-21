USE expense_tracker;

INSERT INTO users (full_name, email) VALUES
('Ravi Teja', 'ravi.teja@example.com'),
('Sneha Reddy', 'sneha.reddy@example.com'),
('Arjun Kumar', 'arjun.kumar@example.com');

INSERT INTO categories (category_name) VALUES
('Groceries'),
('Rent'),
('Utilities'),
('Transport'),
('Entertainment'),
('Healthcare');

INSERT INTO expenses (user_id, category_id, amount, expense_date, notes) VALUES
(1, 1, 1450.00, '2026-01-03', 'Weekly grocery run'),
(1, 2, 12000.00, '2026-01-05', 'January rent'),
(1, 3, 850.50,  '2026-01-08', 'Electricity bill'),
(1, 4, 300.00,  '2026-01-10', 'Auto fare'),
(1, 1, 980.00,  '2026-01-15', 'Vegetables and fruits'),
(2, 2, 11000.00,'2026-01-04', 'January rent'),
(2, 1, 1200.00, '2026-01-06', 'Monthly groceries'),
(2, 5, 600.00,  '2026-01-12', 'Movie night'),
(2, 3, 720.00,  '2026-01-14', 'Water + electricity'),
(2, 6, 450.00,  '2026-01-20', 'Pharmacy'),
(3, 1, 1100.00, '2026-01-02', 'Grocery shopping'),
(3, 4, 1800.00, '2026-01-07', 'Fuel for bike'),
(3, 5, 1200.00, '2026-01-11', 'Concert tickets'),
(3, 2, 9500.00, '2026-01-01', 'January rent'),
(3, 3, 690.00,  '2026-01-18', 'Internet bill');
