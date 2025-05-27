-- Task 21: Top Feedback Providers

SELECT u.full_name, COUNT(f.feedback_id) AS feedbacks_given
FROM Feedback f
JOIN Users u ON f.user_id = u.user_id
GROUP BY u.user_id
ORDER BY feedbacks_given DESC
LIMIT 5;
