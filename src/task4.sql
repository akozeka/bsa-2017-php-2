UPDATE users AS u
  LEFT JOIN bookings AS b ON u.id = b.user_id
SET is_deleted = 1
WHERE b.id IS NULL