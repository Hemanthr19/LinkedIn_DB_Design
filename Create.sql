CREATE DATABASE lINKEDINDB;

USE lINKEDINDB;

CREATE TABLE Users (
    user_id     INT IDENTITY(1,1) PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    email       VARCHAR(255) NOT NULL UNIQUE,
    password    VARCHAR(255) NOT NULL,
    join_date   DATETIME DEFAULT GETDATE()
);

CREATE TABLE profiles (
    profile_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT UNIQUE NOT NULL,
    title VARCHAR(100) NOT NULL,
    industry VARCHAR(100),
    location VARCHAR(100),
    summary VARCHAR(100),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);

CREATE TABLE connections (
    connection_id INT IDENTITY(1,1) PRIMARY KEY,
    req_id INT NOT NULL,
    rec_id INT NOT NULL,
    status VARCHAR(50) CHECK (status IN('pending','accepted','blocked','rejected')),
    created_date DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (req_id) REFERENCES Users(user_id),
    FOREIGN KEY (rec_id) REFERENCES Users(user_id) 
);

CREATE TABLE Education(
    edu_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    school_name VARCHAR(255),
    degree VARCHAR(255),
    field_of_study VARCHAR(255),
    start_date DATETIME DEFAULT GETDATE(),
    end_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) 
);


CREATE TABLE Experience(
    Experience_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    job_title VARCHAR(255) NOT NULL,
    location VARCHAR(150),
    start_date DATETIME,
    end_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Skills(
    skill_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    skill_name VARCHAR(100) NOT NULL,    
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Posts(
    post_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    content VARCHAR(MAX) NOT NULL,
    date_posted DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Comments(
    comment_id INT IDENTITY(1,1) PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    content VARCHAR(500) NOT NULL,
    date_commented DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Likes(
    like_id INT IDENTITY(1,1) PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    date_liked DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CONSTRAINT uq_like UNIQUE (post_id, user_id)
);

CREATE TABLE Shares(
    share_id INT IDENTITY(1,1) PRIMARY KEY,
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    date_shared DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (post_id) REFERENCES Posts(post_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Groups(
    group_id INT IDENTITY(1,1) PRIMARY KEY,
    group_name VARCHAR(255) NOT NULL UNIQUE,
    description VARCHAR(500),
    created_by INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (created_by) REFERENCES Users(user_id)
);

CREATE TABLE Group_members(
    group_id INT NOT NULL,
    user_id INT NOT NULL,
    status VARCHAR(50) CHECK (status IN('pending', 'accepted', 'blocked')),
    joined_at DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (group_id,user_id),
    FOREIGN KEY (group_id) REFERENCES Groups(group_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


