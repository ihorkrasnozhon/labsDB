CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE news (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

CREATE TABLE comments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    commenter_name VARCHAR(255) NOT NULL,
    text TEXT NOT NULL,
    FOREIGN KEY (news_id) REFERENCES News(id)
);

CREATE TABLE ratings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    ip_address VARCHAR(255) NOT NULL,
    rating_value INT CHECK (rating_value >= 1 AND rating_value <= 5),
    FOREIGN KEY (news_id) REFERENCES News(id)
);


