# Write a script that creates all the tables below in alx_book_store in your MySQL server.
# task_2_generator.py
# This script generates a SQL file (task_2.sql) with CREATE TABLE statements
# for the alx_book_store database.

def main():
    sql_statements = """
    DROP TABLE IF EXISTS order_details;
    DROP TABLE IF EXISTS orders;
    DROP TABLE IF EXISTS customers;
    DROP TABLE IF EXISTS books;
    DROP TABLE IF EXISTS authors;

    CREATE TABLE authors (
        author_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        bio TEXT
    );

    CREATE TABLE books (
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(255) NOT NULL,
        author_id INT NOT NULL,
        price DECIMAL(10,2) NOT NULL,
        stock INT DEFAULT 0,
        FOREIGN KEY (author_id) REFERENCES authors(author_id)
    );

    CREATE TABLE customers (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255),
        phone VARCHAR(20)
    );

    CREATE TABLE orders (
        order_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_id INT NOT NULL,
        order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    );

    CREATE TABLE order_details (
        order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT NOT NULL,
        book_id INT NOT NULL,
        quantity INT NOT NULL,
        FOREIGN KEY (order_id) REFERENCES orders(order_id),
        FOREIGN KEY (book_id) REFERENCES books(book_id)
    );
    """

    with open("task_2.sql", "w") as f:
        f.write(sql_statements.strip())

    print("✅ SQL file 'task_2.sql' has been generated successfully.")


if __name__ == "__main__":
    main()

