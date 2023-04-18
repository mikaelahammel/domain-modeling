DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follows;


CREATE TABLE posts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    date_time TEXT,
    user_id INTEGER
);

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_name TEXT,
    first_name TEXT,
    last_name TEXT,
    location TEXT
);

CREATE TABLE likes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    number_of_likes INTEGER,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE comments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    comment TEXT,
    post_id INTEGER,
    user_id INTEGER
);

CREATE TABLE follows (
    id INTEGER PRIMARY KEY AUTOINCREMENT
    followed_user_id INTEGER,
    follower_user_id INTEGER
);
