--- Create products table
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  price INTEGER NOT NULL,
  category VARCHAR(255) NOT NULL,
  image TEXT NOT NULL,
  description TEXT,
  tag VARCHAR(255) NOT NULL
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--- Create orders table
CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL DEFAULT 1,
  status VARCHAR(50) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(id)
);

--- Insert sample products
INSERT INTO products (title, price, category, image, description, tag) VALUES
  (
    "Sonic ANC-700",
    349,
    "audio",
    "https://images.unsplash.com/photo-1518441902117-f0a7e90d4b6b?auto=format&fit=crop&w=900&q=60",
    "Active noise cancellation with 40h battery.",
    "Hifi Audio",
  ),
  (
    "Vortex Pro Watch",
    499,
    "wearables",
    "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=900&q=60",
    "Titanium case, AMOLED display, health tracking.",
    "New Gen",
  ),
  (
    "Shift-X Mechanical",
    189,
    "input",
    "https://images.unsplash.com/photo-1541140532154-b024d705b90a?auto=format&fit=crop&w=900&q=60",
    "Hot-swappable tactile switches.",
    "Mechanical"
  ),
  (
    "Aero Tab S1",
    799,
    "displays",
    "https://images.unsplash.com/photo-1585790050230-5dd28404ccb9?auto=format&fit=crop&w=900&q=60",
    "Ultra-thin tablet with stylus support.",
    "Tablet"
  ),
  (
    "Vision VR Glass",
    1200,
    "displays",
    "https://images.unsplash.com/photo-1593508512255-86ab42a8e620?auto=format&fit=crop&w=900&q=60",
    "Dual micro-OLED displays with eye tracking.",
    "Display"
  ),
  (
    "Velocity SSD 4TB",
    299,
    "components",
    "https://images.unsplash.com/photo-1614064641938-3bbee52942c7?auto=format&fit=crop&w=900&q=60",
    "PCIe Gen 5 read speeds up to 12,000 MB/s.",
    "SSD"
  ),
  (
    "Swift Cursor G3",
    129,
    "input",
    "https://images.unsplash.com/photo-1527814050087-3793815479db?auto=format&fit=crop&w=900&q=60",
    "30K optical sensor, zero-latency wireless.",
    "Cursor"
  ),
  (
    "Orbital Audio Pro",
    249,
    "audio",
    "https://images.unsplash.com/photo-1546435770-a3e426bf472b?auto=format&fit=crop&w=900&q=60",
    "360° soundstage with voice assistant.",
    "Audio"
  )