-- Task 24: Average Session Duration per Event

SELECT e.title, AVG(TIMESTAMPDIFF(MINUTE, s.start_time, s.end_time)) AS avg_duration_mins
FROM Sessions s
JOIN Events e ON s.event_id = e.event_id
GROUP BY e.event_id;
