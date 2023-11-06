CREATE TABLE Categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
)

CREATE TABLE News (
    news_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
)

CREATE TABLE Comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    commenter_name VARCHAR(255) NOT NULL,
    comment_text TEXT NOT NULL,
    FOREIGN KEY (news_id) REFERENCES News(news_id)
)

CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY AUTO_INCREMENT,
    news_id INT,
    ip_address VARCHAR(255) NOT NULL,
    rating_value INT CHECK (rating_value >= 1 AND rating_value <= 5),
    FOREIGN KEY (news_id) REFERENCES News(news_id)
);

