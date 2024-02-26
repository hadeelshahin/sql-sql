SELECT booking_date AS The_date,
    COUNT(booking_date) AS count_of_the_date
FROM bookings AS b
GROUP BY booking_date
HAVING SUM(b.amount_billed)>100;

-- SELECT booking_date AS The_date,
--     COUNT(booking_date) AS count_of_the_date
-- FROM bookings AS b
-- WHERE b.amount_billed > 100
-- GROUP BY booking_date;
