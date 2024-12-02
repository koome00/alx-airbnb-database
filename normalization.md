# Normalization to Third Normal Form (3NF)

## Objective
Ensure the database design adheres to normalization principles, specifically to Third Normal Form (3NF), by removing redundancy, ensuring each attribute is dependent on the primary key, and eliminating transitive dependencies.

---

## Steps to Achieve 3NF

### Step 1: Ensure First Normal Form (1NF)

  - The schema is already in 1NF since all attributes are atomic, there are no repeating groups, and each table has a unique primary key.

### Step 2: Ensure Second Normal Form (2NF)
- There are no partial dependencies exist.
- The schema is already in 2NF.

### Step 3: Ensure Third Normal Form (3NF)
- **Rule**: No transitive dependencies (non-prime attributes should depend only on the primary key).
- **Analysis and Adjustments**:
  1. **User Table**:
      - No changes required; all attributes (e.g., `first_name`, `email`, `role`) depend directly on the primary key `user_id`.

  2. **Property Table**:
      - No transitive dependencies. Attributes like `name`, `location`, and `pricepernight` are directly dependent on `property_id`.

  3. **Booking Table**:
      - No transitive dependencies. Attributes like `start_date`, `end_date`, and `total_price` are dependent only on `booking_id`.

  4. **Payment Table**:
      - No transitive dependencies. Attributes like `amount` and `payment_method` depend directly on `payment_id`.

  5. **Review Table**:
      - No transitive dependencies. Attributes like `rating` and `comment` depend directly on `review_id`.

  6. **Message Table**:
      - No transitive dependencies. Attributes like `message_body` and `sent_at` depend directly on `message_id`.

  7. **General Considerations**:
      - Foreign key relationships (e.g., `host_id` in `Property` or `user_id` in `Booking`) do not violate 3NF 

---

The schema is in 3NF as it is because:
- **No Repeating Groups**: Each table has atomic attributes.
- **There are no Partial Dependencies**: Each non-key attribute is fully dependent on the entire primary key.
- **No Transitive Dependencies**: Non-key attributes depend only on the primary key and not on other non-key attributes.