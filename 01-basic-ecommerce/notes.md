# Design Notes

## Primary Keys

Customer
- customer_id

Product
- product_id

Order
- order_id

## Composite Primary Key

OrderItem uses

(order_id, product_id)

because the same order can contain many products.

## Relationships

Customer 1 ---- N Order

Order N ---- N Product

Resolved using OrderItem.

## What I Learned

- Primary Keys
- Foreign Keys
- Composite Keys
- Many-to-Many relationships