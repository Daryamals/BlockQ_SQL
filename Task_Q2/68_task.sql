WITH route_counts AS (
    SELECT 
        LEAST(town_from, town_to) AS city1,
        GREATEST(town_from, town_to) AS city2,
        COUNT(*) AS flight_count
    FROM Trip
    GROUP BY LEAST(town_from, town_to), GREATEST(town_from, town_to)
),
max_count AS (
    SELECT MAX(flight_count) AS max_flights
    FROM route_counts
)
SELECT COUNT(*) AS num_routes
FROM route_counts
WHERE flight_count = (SELECT max_flights FROM max_count);
