SELECT u.*
FROM users AS u
  INNER JOIN bookings AS b ON u.id = b.user_id
  INNER JOIN tickets AS t ON b.ticket_id = t.id
WHERE t.title = 'Lagos'
