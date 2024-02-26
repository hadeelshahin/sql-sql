-- SELECT ROUND(AVG(amount_billed), 2)
-- FROM bookings
-- WHERE amount_billed > 20 AND amount_tipped>20;
SELECT MAX(b.num_guests),
    MAX(t.num_seats)
FROM bookings AS b
    INNER JOIN tables AS t ON b.table_id = t.id
    INNER JOIN payment_methods AS p ON p.id = b.payment_id
WHERE t.num_seats > 5
    AND p.name = 'Cash';