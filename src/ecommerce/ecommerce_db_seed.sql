--eliminamos las tablas si existen
DROP TABLE IF EXISTS products_tags;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS products_categories;
DROP TABLE IF EXISTS products_shipping_methods;
DROP TABLE IF EXISTS products_images;
DROP TABLE IF EXISTS categories CASCADE ;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS users CASCADE ;
DROP TABLE IF EXISTS pronouns CASCADE;
DROP TABLE IF EXISTS images CASCADE;
DROP TABLE IF EXISTS user_images CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS reviews_images CASCADE;
DROP TABLE IF EXISTS shipping_methods CASCADE;
DROP TABLE IF EXISTS addresses CASCADE;
DROP TABLE IF EXISTS payment_methods CASCADE;
DROP TABLE IF EXISTS payment_method_types CASCADE;

-- tabla de pronombres
DROP TABLE IF EXISTS pronouns;
CREATE TABLE IF NOT EXISTS pronouns
(
    pronouns_id   SERIAL PRIMARY KEY,
    description  VARCHAR(100),
    user_created BOOLEAN,
    created_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE
                               );

-- tabla de usuarios
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users
(
    user_id      SERIAL PRIMARY KEY,
    username      VARCHAR(100) UNIQUE,
    email         VARCHAR(100) UNIQUE,
    password      VARCHAR(255),
    bio           TEXT,
    pronouns_id   INT REFERENCES pronouns(pronouns_id),
    created_at    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    last_login_at TIMESTAMP WITH TIME ZONE,
    updated_at    TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at    TIMESTAMP WITH TIME ZONE

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

DROP TABLE IF EXISTS products;
CREATE TABLE IF NOT EXISTS products
(
    product_id   SERIAL PRIMARY KEY,
    name         VARCHAR(100),
    description  TEXT,
    data         JSONB,
    price        DECIMAL(10, 2),
    stock        INT,
    user_id      INT REFERENCES users(user_id),
    created_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE
                               );

DROP TABLE IF EXISTS products_categories;
CREATE TABLE IF NOT EXISTS products_categories
(
    product_id  INT REFERENCES products(product_id),
    category_id INT REFERENCES categories(category_id),
    PRIMARY KEY (product_id, category_id)
    );

DROP TABLE IF EXISTS tags;
CREATE TABLE IF NOT EXISTS tags
(
    tag_id     SERIAL PRIMARY K-- tabla de usuarios
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users
(
    user_id      SERIAL PRIMARY KEY,
    username      VARCHAR(63) UNIQUE,
    email         VARCHAR(127) UNIQUE,
    password      VARCHAR(255),
    bio           TEXT,
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
    user_id   INT,
    product_id INT,
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
    user_id   INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
);

DROP TABLE IF EXISTS order_items CASCADE;
CREATE TABLE IF NOT EXISTS order_items
(
    order_id INT,
    product_id INT,
    total      DECIMAL(10, 2),
    quantity   INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (order_id, product_id)
);

EY,
    name       VARCHAR(100) UNIQUE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
                             );

DROP TABLE IF EXISTS products_tags;
CREATE TABLE IF NOT EXISTS products_tags
(
    product_id INT REFERENCES products(product_id),
    tag_id     INT REFERENCES tags(tag_id),
    PRIMARY KEY (product_id, tag_id)
    );

DROP TABLE IF EXISTS images;
CREATE TABLE IF NOT EXISTS images
(
    image_id   SERIAL PRIMARY KEY,
    url        TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
);

DROP TABLE IF EXISTS products_images;
CREATE TABLE IF NOT EXISTS products_images
(
    product_id INT REFERENCES products(product_id),
    image_id   INT REFERENCES images(image_id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
                             PRIMARY KEY (product_id, image_id)
    );

DROP TABLE IF EXISTS user_images;
CREATE TABLE IF NOT EXISTS user_images
(
    user_id  INT REFERENCES users(user_id),
    image_id INT REFERENCES images(image_id),
    is_avatar BOOLEAN,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
                             PRIMARY KEY (user_id, image_id)
    );

DROP TABLE IF EXISTS reviews;
CREATE TABLE IF NOT EXISTS reviews
(
    review_id  SERIAL PRIMARY KEY,
    product_id INT REFERENCES products(product_id),
    user_id    INT REFERENCES users(user_id),
    rating     INT,
    comment    TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE
                             );

DROP TABLE IF EXISTS review_images;
CREATE TABLE IF NOT EXISTS reviews_images
(
    review_id INT REFERENCES reviews(review_id),
    image_id  INT REFERENCES images(image_id),
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
                             PRIMARY KEY (review_id, image_id)
    );

DROP TABLE IF EXISTS shipping_methods;
CREATE TABLE IF NOT EXISTS shipping_methods
(
    shipping_method_id SERIAL PRIMARY KEY,
    name               VARCHAR(100),
    description        TEXT,
    created_at         TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at         TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at         TIMESTAMP WITH TIME ZONE
                                     );

DROP TABLE IF EXISTS products_shipping_methods;
CREATE TABLE IF NOT EXISTS products_shipping_methods
(
    product_id          INT REFERENCES products(product_id),
    shipping_method_id  INT REFERENCES shipping_methods(shipping_method_id),
    PRIMARY KEY (product_id, shipping_method_id)
    );

DROP TABLE IF EXISTS addresses;
CREATE TABLE IF NOT EXISTS addresses
(
    address_id  SERIAL PRIMARY KEY,
    user_id     INT REFERENCES users(user_id),
    address     TEXT,
    city        VARCHAR(100),
    state       VARCHAR(100),
    country     VARCHAR(100),
    postal_code VARCHAR(100),
    is_default  BOOLEAN,
    created_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at  TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at  TIMESTAMP WITH TIME ZONE
                              );

DROP TABLE IF EXISTS payment_method_types;
CREATE TABLE IF NOT EXISTS payment_method_types
(
    payment_method_type_id SERIAL PRIMARY KEY,
    name                   VARCHAR(100),
    description            TEXT,
    created_at             TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at             TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at             TIMESTAMP WITH TIME ZONE
                                         );

DROP TABLE IF EXISTS payment_methods;
CREATE TABLE IF NOT EXISTS payment_methods
(
    payment_method_id SERIAL PRIMARY KEY,
    cardholder_name   VARCHAR(100),
    card_number       VARCHAR(100),
    expiration_date   DATE,
    cvv               VARCHAR(3),
    user_id           INT REFERENCES users(user_id),
    is_default        BOOLEAN,
    payment_method_type_id INT REFERENCES payment_method_types(payment_method_type_id),
    created_at        TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at        TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at        TIMESTAMP WITH TIME ZONE
                                    );



DROP TABLE IF EXISTS orders;
CREATE TABLE IF NOT EXISTS orders
(
    order_id   SERIAL PRIMARY KEY,
    user_id      INT REFERENCES users(user_id),
    address_id   INT REFERENCES addresses(address_id),
    payment_method_id INT REFERENCES payment_methods(payment_method_id),
    shipping_method_id INT REFERENCES shipping_methods(shipping_method_id),
    total_amount DECIMAL(10, 2),
    created_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at   TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at   TIMESTAMP WITH TIME ZONE
                               );
)


DROP TABLE IF EXISTS shopping_cart;
CREATE TABLE IF NOT EXISTS shopping_cart
(
    user_id   INT REFERENCES users(user_id),
    product_id INT REFERENCES products(product_id),
    quantity   INT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP WITH TIME ZONE,
    PRIMARY KEY (user_id, product_id)
)
