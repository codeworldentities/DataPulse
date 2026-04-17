-- Auto-generated: migration script v7420
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_7420 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    description TEXT,
    metadata JSONB,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_7420_name
    ON migration_script_7420(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_7420_created
    ON migration_script_7420(created_at DESC);

-- Seed data
INSERT INTO migration_script_7420 (name, status)
VALUES
    ('item_0', 'val_0_7420'),
    ('item_1', 'val_1_7420'),
    ('item_2', 'val_2_7420'),
    ('item_3', 'val_3_7420'),
    ('item_4', 'val_4_7420'),
    ('item_5', 'val_5_7420'),
    ('item_6', 'val_6_7420'),
    ('item_7', 'val_7_7420'),

-- View
CREATE OR REPLACE VIEW v_migration_script_7420_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_7420
GROUP BY name
ORDER BY total DESC;
