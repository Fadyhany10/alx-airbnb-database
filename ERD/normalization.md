# Airbnb Database Normalization - Up to 3NF

## ✅ Objective
Apply normalization principles to ensure the database is structured in **Third Normal Form (3NF)** — reducing redundancy and improving data integrity.

---

## 1️⃣ First Normal Form (1NF)

**Criteria**:  
- Eliminate repeating groups  
- Ensure atomic (indivisible) values in each field

**Actions Taken**:
- All attributes are atomic: no lists or nested structures (e.g., only one email, one phone number per user).
- Unique identifiers (UUIDs) are used as primary keys in all tables.
- Each table represents a single entity: `User`, `Property`, `Booking`, `Payment`, `Review`, `Message`.

✅ The schema **satisfies 1NF**.

---

## 2️⃣ Second Normal Form (2NF)

**Criteria**:  
- Be in 1NF  
- Remove partial dependencies (no non-key attribute should depend on part of a composite key)

**Actions Taken**:
- All tables use single-column primary keys (UUIDs), so **no composite keys exist**.
- All non-key attributes depend entirely on the primary key of their table.

✅ The schema **satisfies 2NF**.

---

## 3️⃣ Third Normal Form (3NF)

**Criteria**:  
- Be in 2NF  
- No transitive dependencies (non-key attributes must not depend on other non-key attributes)

**Improvements Made**:

### 🔸 `Property` Table
- The `location` field is currently a `VARCHAR`, which can cause repetition (e.g., "New York, NY" repeated across multiple rows).
- ✅ **Solution**: Create a new `Location` table to normalize locations.


