CREATE TABLE customer (
    customer_ID INT PRIMARY KEY,
    first_Name VARCHAR(50),
    last_Name VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    zip VARCHAR(5),
    phone VARCHAR(10)
);

CREATE TABLE products (
    product_ID INT PRIMARY KEY,
    quantity INT,
    product_type VARCHAR(10)
);

CREATE TABLE orders (
    order_number INT PRIMARY KEY,
    customer_ID INT,
    To_street VARCHAR(50),
    To_city VARCHAR(50),
    To_state VARCHAR(50),
    To_zip VARCHAR(10),
    ship_date DATE,
    product_ID INT,

    CONSTRAINT FK_orders_customer_ID
        FOREIGN KEY (customer_ID)
        REFERENCES customer(customer_ID),

    CONSTRAINT FK_orders_product_ID
        FOREIGN KEY (product_ID)
        REFERENCES products(product_ID)
);

CREATE TABLE shipment (
    shipping_ID INT PRIMARY KEY,
    product_ID INT,
    order_number INT,
    chargeCardTime TIMESTAMP,
    packingTime TIMESTAMP,
    shipOrderDate DATE,

    CONSTRAINT FK_shipment_product_ID
        FOREIGN KEY (product_ID)
        REFERENCES products(product_ID),

    CONSTRAINT FK_shipment_order_number
        FOREIGN KEY (order_number)
        REFERENCES orders(order_number)
);