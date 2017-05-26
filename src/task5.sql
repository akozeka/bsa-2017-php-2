SELECT u.*
FROM users AS u
WHERE NOT EXISTS(
    SELECT *
    FROM tickets AS t
      INNER JOIN bookings AS b ON t.id = b.ticket_id
    WHERE b.user_id = u.id AND t.country = 'Aruba'
)
