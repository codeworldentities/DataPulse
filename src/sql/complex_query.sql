-- Auto-generated: complex query v7259
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_7259 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    status VARCHAR(50) DEFAULT 'active',
    email VARCHAR(255),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_7259_name
    ON complex_query_7259(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_7259_created
    ON complex_query_7259(created_at DESC);

-- Seed data
INSERT INTO complex_query_7259 (name, is_active)
VALUES
    ('item_0', 'val_0_7259'),
    ('item_1', 'val_1_7259'),
    ('item_2', 'val_2_7259'),
    ('item_3', 'val_3_7259'),
    ('item_4', 'val_4_7259'),
    ('item_5', 'val_5_7259'),
    ('item_6', 'val_6_7259'),
    ('item_7', 'val_7_7259'),

-- View
CREATE OR REPLACE VIEW v_complex_query_7259_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_7259
GROUP BY name
ORDER BY total DESC;
