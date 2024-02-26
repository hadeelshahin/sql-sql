SELECT p.name AS payment_method,
    b.booking_date AS date,
    SUM(b.num_guests) AS number_of_guests,
    ROUND(AVG(b.amount_tipped), 2) AS tip
FROM bookings AS b
    INNER JOIN payment_methods AS p ON b.payment_id = p.id
GROUP BY b.booking_date,
    p.name
     -- SELECT booking_date AS date, SUM(num_guests) AS guests FROM bookings GROUP BY booking_date;
    -- SELECT p.name AS date,
    --     SUM(b.num_guests)
    -- from bookings AS b
    --     INNER JOIN payment_methods AS p ON p.id = b.payment_id
    -- GROUP BY p.name;