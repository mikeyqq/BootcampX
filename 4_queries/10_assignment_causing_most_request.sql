SELECT assignments.id, name, day, chapter, assignments.name, count(assistance_requests.completed_at) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;