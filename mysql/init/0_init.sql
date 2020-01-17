CREATE DATABASE
IF NOT EXISTS stock;

CREATE TABLE
IF NOT EXISTS stock.users
(
  id int PRIMARY KEY AUTO_INCREMENT,
  user_name varchar(64) UNIQUE NOT NULL,
  display_name varchar(64) NOT NULL,
  email varchar(64) NOT NULL,
  password varchar(255) NOT NULL,
  profile_image_url varchar(255),
  is_active tinyint(1) DEFAULT 1,
  is_staff tinyint(1) DEFAULT 0,
  created_at datetime DEFAULT current_timestamp,
  updated_at timestamp DEFAULT current_timestamp on update current_timestamp
);

CREATE TABLE
IF NOT EXISTS stock.stocks
(
  id int PRIMARY KEY AUTO_INCREMENT,
  user_id int,
  content varchar(2550) NOT NULL,
  stock_order int,
  created_at datetime default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp
);

CREATE TABLE
IF NOT EXISTS stock.notes
(
  id int PRIMARY KEY AUTO_INCREMENT,
  user_id int NOT NULL,
  title varchar(50) NOT NULL,
  created_at datetime default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp
);

CREATE TABLE
IF NOT EXISTS stock.notes_stocks
(
  id int PRIMARY KEY AUTO_INCREMENT,
  note_id int NOT NULL,
  stock_id int NOT NULL,
  stock_order int,
  created_at datetime default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp
);