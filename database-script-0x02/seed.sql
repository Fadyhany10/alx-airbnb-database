-- ====================================
-- 🌱 Sample Data for Airbnb Database
-- ====================================

-- 👤 USERS
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
  ('uuid-001', 'Alice', 'Smith', 'alice@example.com', 'hashed_pwd_1', '1234567890', 'guest', CURRENT_TIMESTAMP),
  ('uuid-002', 'Bob', 'Johnson', 'bob@example.com', 'hashed_pwd_2', '0987654321', 'host', CURRENT_TIMESTAMP),
  ('uuid-003', 'Carol', 'Lee', 'carol@example.com', 'hashed_pwd_3', NULL, 'guest', CURRENT_TIMESTAMP);

-- 🏠 PROPERTIES
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
  ('prop-001', 'uuid-002', 'Sunny Apartment', 'A cozy apartment in the city center.', 'Cairo, Egypt', 60.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  ('prop-002', 'uuid-002', 'Beach House', 'A beautiful beach house with ocean view.', 'Alexandria, Egypt', 120.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- 📆 BOOKINGS
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
  ('book-001', 'prop-001', 'uuid-001', '2025-06-01', '2025-06-05', 240.00, 'confirmed', CURRENT_TIMESTAMP),
  ('book-002', 'prop-002', 'uuid-003', '2025-07-10', '2025-07-15', 600.00, 'pending', CURRENT_TIMESTAMP);

-- 💳 PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
  ('pay-001', 'book-001', 240.00, CURRENT_TIMESTAMP, 'credit_card'),
  ('pay-002', 'book-002', 600.00, CURRENT_TIMESTAMP, 'paypal');

-- 🌟 REVIEWS
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES
  ('rev-001', 'prop-001', 'uuid-001', 5, 'Wonderful place, very clean!', CURRENT_TIMESTAMP),
  ('rev-002', 'prop-002', 'uuid-003', 4, 'Nice location, but a bit noisy.', CURRENT_TIMESTAMP);

-- 💬 MESSAGES
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
  ('msg-001', 'uuid-001', 'uuid-002', 'Hi, is the apartment available in July?', CURRENT_TIMESTAMP),
  ('msg-002', 'uuid-002', 'uuid-001', 'Yes, it is! You can book anytime.', CURRENT_TIMESTAMP);
