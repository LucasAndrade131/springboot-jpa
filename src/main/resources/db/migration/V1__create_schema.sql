CREATE TABLE tb_user (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
email VARCHAR(255),
phone VARCHAR(255),
password VARCHAR(255)
);

CREATE TABLE tb_category (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL
);

CREATE TABLE tb_product (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(255) NOT NULL,
description TEXT,
price DECIMAL(10,2),
img_url VARCHAR(255)
);

-- join table produto-categoria
CREATE TABLE tb_product_category (
product_id BIGINT NOT NULL,
category_id BIGINT NOT NULL,
PRIMARY KEY (product_id, category_id),
FOREIGN KEY (product_id) REFERENCES tb_product(id),
FOREIGN KEY (category_id) REFERENCES tb_category(id)
);

CREATE TABLE tb_order (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
moment TIMESTAMP,
order_status INT,
client_id BIGINT,
FOREIGN KEY (client_id) REFERENCES tb_user(id)
);

-- tabela de item de pedido (PK composta)
CREATE TABLE tb_order_item (
order_id BIGINT NOT NULL,
product_id BIGINT NOT NULL,
quantity INT,
price DECIMAL(10,2),
PRIMARY KEY (order_id, product_id),
FOREIGN KEY (order_id) REFERENCES tb_order(id),
FOREIGN KEY (product_id) REFERENCES tb_product(id)
);

-- tabela de pagamento (1:1)
CREATE TABLE tb_payment (
id BIGINT PRIMARY KEY,
moment TIMESTAMP,
FOREIGN KEY (id) REFERENCES tb_order(id)
);