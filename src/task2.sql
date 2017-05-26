SELECT DISTINCT u.*
FROM users AS u
  INNER JOIN bookings AS b ON u.id = b.user_id
