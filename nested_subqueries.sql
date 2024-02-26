SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) =(
        SELECT MIN(daily_amount)
        FROM (
                SELECT booking_date AS the_date,
                    SUM(amount_billed) AS daily_amount
                FROM bookings
                GROUP BY the_date
            ) AS daily_table
    );
