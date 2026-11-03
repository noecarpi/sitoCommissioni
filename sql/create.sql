CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR (100) UNIQUE,
    fullname VARCHAR (100),
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    is_admin BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE commission_sizes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2) NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE commission_styles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    multiplier DECIMAL(5,2) NOT NULL DEFAULT 1.00,
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE commissions (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT,
    email VARCHAR(100) NOT NULL,
    size_id BIGINT NOT NULL,
    style_id BIGINT NOT NULL,
    description TEXT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    status VARCHAR(30) NOT NULL DEFAULT 'PENDING',

    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (size_id) REFERENCES commission_sizes(id),
    FOREIGN KEY (style_id) REFERENCES commission_styles(id)
);

CREATE TABLE commission_images (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    commission_id BIGINT NOT NULL,
    image_type VARCHAR(100) NOT NULL,
    path VARCHAR(1000) NOT NULL,

    FOREIGN KEY (commission_id) REFERENCES commissions(id)
);
