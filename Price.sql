CREATE TABLE currency_settings (
    id TEXT PRIMARY KEY,
    currency_name TEXT,
    current_price NUMERIC,
    target_price NUMERIC,
    is_constant BOOLEAN DEFAULT FALSE,
    price_24h_ago NUMERIC,
    last_updated TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- প্রাথমিক ডেটা ইনসার্ট করা (USD এবং NXS এর জন্য)
INSERT INTO currency_settings (id, currency_name, current_price, target_price, is_constant, price_24h_ago)
VALUES 
('usd', 'USD', 1.00, 1.00, true, 1.00),
('nxs', 'NXS', 0.50, 2.50, false, 0.48);
