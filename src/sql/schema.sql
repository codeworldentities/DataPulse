-- Auto-generated: schema — database schema definition v2061
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2061 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    counter INTEGER DEFAULT 0,
    description TEXT,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2061_name
    ON schema_—_database_schema_definition_2061(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2061_created
    ON schema_—_database_schema_definition_2061(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2061 (name, metadata)
VALUES
    ('item_0', 'val_0_2061'),
    ('item_1', 'val_1_2061'),
    ('item_2', 'val_2_2061'),
    ('item_3', 'val_3_2061'),
    ('item_4', 'val_4_2061'),
    ('item_5', 'val_5_2061'),
    ('item_6', 'val_6_2061'),
    ('item_7', 'val_7_2061'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2061_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2061
GROUP BY name
ORDER BY total DESC;
