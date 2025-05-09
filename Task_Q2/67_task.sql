WITH route_counts AS (
    SELECT town_from, town_to, COUNT(*) AS flight_count
    FROM Trip
    GROUP BY town_from, town_to
),
max_count AS (
    SELECT MAX(flight_count) AS max_flights
    FROM route_counts
)
SELECT COUNT(*) AS num_routes
FROM route_counts
WHERE flight_count = (SELECT max_flights FROM max_count)
