-- tabla de usuarios
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users
(
    user_id      SERIAL PRIMARY KEY,
    username      VARCHAR(63) UNIQUE,
    email         VARCHAR(127) UNIQUE,
    password      VARCHAR(255),
    bio           varchar(255),
    created_at    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_login_at TIMESTAMP WITH TIME ZONE,
    updated_at    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at    TIMESTAMP WITH TIME ZONE

);

DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE IF NOT EXISTS products
(
    product_id   SERIAL PRIMARY KEY,
    name         VARCHAR(63),
    description  TEXT,
    price        DECIMAL(10, 2),
    stock        INT,
    user_id      INT REFERENCES users(user_id),
    created_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE
);

DROP TABLE IF EXISTS shopping_cart CASCADE;
CREATE TABLE IF NOT EXISTS shopping_cart
(
    user_id   INT REFERENCES users(user_id),
    product_id INT REFERENCES products(product_id),
    quantity   INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
    primary key (user_id, product_id)
);

DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE IF NOT EXISTS orders
(
    order_id  SERIAL PRIMARY KEY,
    user_id   INT REFERENCES users(user_id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
);

DROP TABLE IF EXISTS order_items CASCADE;
CREATE TABLE IF NOT EXISTS order_items
(
    order_id INT,
    product_id INT REFERENCES products(product_id),
    total      DECIMAL(10, 2),
    quantity   INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (order_id, product_id)
);


-- tabla de categorias
DROP TABLE IF EXISTS categories;
CREATE TABLE IF NOT EXISTS categories
(
    category_id SERIAL PRIMARY KEY,
    name        VARCHAR(100) UNIQUE,
    description TEXT,
    parent_id   INT REFERENCES categories(category_id),
    created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at  TIMESTAMP WITH TIME ZONE
);

-- tabla de productos categorias
DROP TABLE IF EXISTS product_categories;
CREATE TABLE IF NOT EXISTS product_categories
(
    product_id  INT REFERENCES products(product_id),
    category_id INT REFERENCES categories(category_id),
    created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at  TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (product_id, category_id)
);

