CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create a table for posts
CREATE TABLE posts (
    post_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    title VARCHAR(100) NOT NULL,
    body TEXT NOT NULL
);

-- Create a table for comments
CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    post_id INT REFERENCES posts(post_id) ON DELETE CASCADE,
    user_id INT REFERENCES users(user_id) ON DELETE CASCADE,
    comment_text TEXT NOT NULL
);

COPY users(user_id,username,email)
FROM '/home/csv/users.csv'
DELIMITER ','
CSV HEADER;

COPY posts(post_id,user_id,title,body)
FROM '/home/csv/posts.csv'
DELIMITER ','
CSV HEADER;

COPY comments(comment_id,post_id,user_id,comment_text)
FROM '/home/csv/comments.csv'
DELIMITER ','
CSV HEADER;