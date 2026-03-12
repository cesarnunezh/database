-- Create products table
CREATE TABLE IF NOT EXISTS products (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  price NUMERIC(10,2) NOT NULL,
  category VARCHAR(255) NOT NULL,
  image TEXT NOT NULL,
  description TEXT,
  tag VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create orders table 
CREATE TABLE IF NOT EXISTS orders (
  id SERIAL PRIMARY KEY,
  product_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL DEFAULT 1,
  status VARCHAR(50) DEFAULT 'pending',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert sample products
INSERT INTO products (title, price, category, image, description, tag) VALUES
  (
    'Sonic ANC-700',
    349,
    'audio',
    'https://businessheadsets.com/wp-content/uploads/36fcdf7af16938b16cc7e8be6c53560f.jpg',
    'Active noise cancellation with 40h battery.',
    'Hifi Audio'
  ),
  (
    'Vortex Pro Watch',
    499,
    'wearables',
    'https://media.easy-peasy.ai/27feb2bb-aeb4-4a83-9fb6-8f3f2a15885e/071275ca-708f-42b0-afe7-78a26028844e_medium.webp',
    'Titanium case, AMOLED display, health tracking.',
    'New Gen'
  ),
  (
    'Shift-X Mechanical',
    189,
    'input',
    'https://powergpu.com/cdn/shop/files/image-removebg-preview_2.png?v=1762453240',
    'Hot-swappable tactile switches.',
    'Mechanical'
  ),
  (
    'Aero Tab S1',
    799,
    'displays',
    'https://cache.getarchive.net/Prod/thumb/cdn12/L3Bob3RvLzIwMTYvMTIvMzEvdGFibGV0LWlwYWQtc2NyZWVuLWNvbXB1dGVyLWNvbW11bmljYXRpb24tMTBhMjc5LTEwMjQuanBn/1024/768/jpg',
    'Ultra-thin tablet with stylus support.',
    'Tablet'
  ),
  (
    'Vision VR Glass',
    1200,
    'displays',
    'https://media.easy-peasy.ai/27feb2bb-aeb4-4a83-9fb6-8f3f2a15885e/c5b855c1-1b53-4e1b-ba25-da1a2238e251_medium.webp',
    'Dual micro-OLED displays with eye tracking.',
    'Display'
  ),
  (
    'Velocity SSD 4TB',
    299,
    'components',
    'https://cdn.shopify.com/s/files/1/0228/7629/1136/files/section-4-NP3541U.jpg?v=1749843404',
    'PCIe Gen 5 read speeds up to 12,000 MB/s.',
    'SSD'
  ),
  (
    'Swift Cursor G3',
    129,
    'input',
    'https://powergpu.com/cdn/shop/files/image-removebg-preview.png?v=1762453025&width=1346',
    '30K optical sensor, zero-latency wireless.',
    'Cursor'
  ),
  (
    'Orbital Audio Pro',
    249,
    'audio',
    'https://www.baudville.com/cdn/shop/files/BV_51497BK_FRONT.jpg?v=1734943050&quot',
    '360° soundstage with voice assistant.',
    'Audio'
  );
