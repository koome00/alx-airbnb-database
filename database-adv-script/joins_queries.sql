SELECT
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status
FROM
    User u
FULL OUTER JOIN
    Booking b
ON
    u.user_id = b.user_id;
