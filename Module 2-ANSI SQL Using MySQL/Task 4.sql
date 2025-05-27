-- Task 4: Peak Session Hours

SELECT e.title, COUNT(s.session_id) AS peak_sessions
FROM Sessions s
JOIN Events e ON s.event_id = e.event_id
WHERE TIME(s.start_time) BETWEEN '10:00:00' AND '11:59:59'
GROUP BY e.event_id;
