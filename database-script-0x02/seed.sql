
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
    ('uuid1', 'Alice', 'Smith', 'alice@example.com', 'hashed_password1', '1234567890', 'guest', DEFAULT),
    ('uuid2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_password2', '9876543210', 'host', DEFAULT),
    ('uuid3', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_password3', '5555555555', 'admin', DEFAULT);


INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at)
VALUES 
    ('uuid4', 'uuid2', 'Cozy Cottage', 'A charming 2-bedroom cottage.', '123 Main St, Springfield', 120.00, DEFAULT, DEFAULT),
    ('uuid5', 'uuid2', 'Luxury Villa', 'Spacious villa with pool and ocean view.', '456 Ocean Dr, Miami', 500.00, DEFAULT, DEFAULT);


INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
    ('uuid6', 'uuid4', 'uuid1', '2024-12-10', '2024-12-15', 600.00, 'confirmed', DEFAULT),
    ('uuid7', 'uuid5', 'uuid1', '2025-01-05', '2025-01-10', 2500.00, 'pending', DEFAULT);

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
    ('uuid8', 'uuid6', 600.00, DEFAULT, 'credit_card'),
    ('uuid9', 'uuid7', 2500.00, DEFAULT, 'paypal');


INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
    ('uuid10', 'uuid4', 'uuid1', 5, 'Fantastic stay! Highly recommend.', DEFAULT),
    ('uuid11', 'uuid5', 'uuid1', 2, 'Rude Host', DEFAULT);


INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
    ('uuid12', 'uuid1', 'uuid2', 'Hi Bob, is this available for next week?', DEFAULT),
    ('uuid13', 'uuid2', 'uuid1', 'Hi Alice, yes it’s available. Let me know if you’d like to book it.', DEFAULT);
