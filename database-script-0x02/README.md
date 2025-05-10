# Airbnb Database Sample Data

This SQL script populates the Airbnb database schema with sample data that reflects real-world usage.

## Entities and Sample Content

### ✅ Users
- 3 users with different roles: guest and host.
- Includes hashed passwords and optional phone numbers.

### 🏠 Properties
- 2 properties listed by the host Bob.
- Located in Egypt with realistic pricing.

### 📅 Bookings
- 2 bookings by two different guests for the available properties.
- Reflect confirmed and pending booking statuses.

### 💳 Payments
- Each booking has an associated payment with a different method (credit card, PayPal).

### 🌟 Reviews
- Guests leave a rating (1–5) and feedback on their stays.

### 💬 Messages
- Demonstrates user-to-user messaging between guest and host.

## Usage

Run the script `sample_data.sql` after creating your schema to populate your database with sample entries. You can modify or expand on these for further testing.

> Ensure UUIDs and foreign keys match your schema or update them accordingly if using auto-generation.

---

Let me know if you’d like this in a downloadable `.zip` or need SQL scripts tailored to PostgreSQL/MySQL.
