USE lINKEDINDB;


INSERT INTO Users (name, email, password)
VALUES 
('Alice Johnson', 'alice@example.com', 'hashed_pw1'),
('Bob Smith', 'bob@example.com', 'hashed_pw2'),
('Charlie Lee', 'charlie@example.com', 'hashed_pw3'),
('Diana Scott', 'diana@example.com', 'hashed_pw4'),
('Ethan Clark', 'ethan@example.com', 'hashed_pw5'),
('Fiona Green', 'fiona@example.com', 'hashed_pw6'),
('George Adams', 'george@example.com', 'hashed_pw7'),
('Hannah White', 'hannah@example.com', 'hashed_pw8'),
('Ian Brooks', 'ian@example.com', 'hashed_pw9'),
('Julia Roberts', 'julia@example.com', 'hashed_pw10');


INSERT INTO Profiles (user_id, title, industry, location, summary)
VALUES
(12, 'Software Engineer', 'Technology', 'New York', 'Experienced full-stack developer.'),
(13, 'Data Analyst', 'Analytics', 'Chicago', 'Skilled in SQL and Power BI.'),
(14, 'HR Manager', 'Human Resources', 'Boston', 'Focused on team culture and growth.'),
(15, 'Graphic Designer', 'Design', 'Seattle', 'Creative with a love for branding.'),
(16, 'DevOps Engineer', 'IT Infrastructure', 'San Francisco', 'Automation and cloud expert.'),
(17, 'Product Manager', 'Product', 'Austin', 'Loves building user-centric products.'),
(18, 'QA Tester', 'Software Testing', 'Denver', 'Detail-oriented and test-driven.'),
(19, 'Business Analyst', 'Finance', 'New York', 'Translating data into decisions.'),
(20, 'Marketing Lead', 'Marketing', 'Los Angeles', 'Brand strategist with 5 years of experience.'),
(21, 'Cybersecurity Specialist', 'Cybersecurity', 'Washington DC', 'Passionate about digital security.');



INSERT INTO connections (req_id, rec_id, status)
VALUES
(12, 13, 'accepted'),
(13, 14, 'pending'),
(14, 15, 'accepted'),
(15, 16, 'blocked'),
(16, 17, 'accepted'),
(17, 18, 'rejected'),
(18, 19, 'accepted'),
(19, 20, 'accepted'),
(20, 21, 'pending'),
(21, 12, 'accepted');


INSERT INTO Education (user_id, school_name, degree, field_of_study, start_date, end_date)
VALUES
(12, 'MIT', 'B.Tech', 'Computer Science', '2015-08-01', '2019-05-31'),
(13, 'Stanford University', 'MBA', 'Business Administration', '2016-09-01', '2018-06-15'),
(14, 'Harvard University', 'B.A.', 'Psychology', '2014-07-01', '2018-06-01'),
(15, 'UCLA', 'BFA', 'Graphic Design', '2013-08-15', '2017-05-30'),
(16, 'UC Berkeley', 'M.Tech', 'DevOps Engineering', '2017-09-01', '2019-06-01'),
(17, 'University of Texas', 'MBA', 'Product Management', '2018-01-10', '2020-01-10'),
(18, 'NYU', 'B.Sc.', 'Software Testing', '2015-08-10', '2019-06-15'),
(19, 'Columbia University', 'BBA', 'Finance', '2016-09-01', '2020-06-01'),
(20, 'USC', 'B.A.', 'Marketing', '2014-09-01', '2018-06-15'),
(21, 'Carnegie Mellon', 'M.Sc.', 'Cybersecurity', '2017-08-01', '2019-05-31');



INSERT INTO Experience (user_id, company_name, job_title, location, start_date, end_date)
VALUES
(12, 'Google', 'Software Engineer', 'New York', '2020-01-15', '2023-06-30'),
(13, 'Amazon', 'Data Analyst', 'Chicago', '2019-03-01', '2022-11-15'),
(14, 'Microsoft', 'HR Manager', 'Boston', '2018-07-01', '2021-08-01'),
(15, 'Adobe', 'Graphic Designer', 'Seattle', '2017-04-10', '2020-10-30'),
(16, 'Netflix', 'DevOps Engineer', 'San Francisco', '2020-05-01', '2023-05-01'),
(17, 'Meta', 'Product Manager', 'Austin', '2021-01-15', '2023-12-31'),
(18, 'Infosys', 'QA Tester', 'Denver', '2019-09-01', '2022-06-01'),
(19, 'Goldman Sachs', 'Business Analyst', 'New York', '2018-02-01', '2022-09-30'),
(20, 'Spotify', 'Marketing Lead', 'Los Angeles', '2017-06-01', '2021-12-31'),
(21, 'Cisco', 'Cybersecurity Specialist', 'Washington DC', '2019-04-15', '2023-04-15');



INSERT INTO Skills (user_id, skill_name)
VALUES
(12, 'Python'),
(13, 'SQL'),
(14, 'Leadership'),
(15, 'Adobe Photoshop'),
(16, 'AWS'),
(17, 'Product Strategy'),
(18, 'Test Automation'),
(19, 'Financial Analysis'),
(20, 'Digital Marketing'),
(21, 'Network Security');

INSERT INTO Posts (user_id, content)
VALUES
(12, 'Excited to start my journey at Google!'),
(13, 'Data is the new oil — insights from my latest project.'),
(14, 'Hiring for HR roles in Boston — message me!'),
(15, 'Just wrapped up a branding project for a major client.'),
(16, 'Deploying with CI/CD pipelines is so efficient!'),
(17, 'Shipped our product MVP — grateful for the team!'),
(18, 'Automated 100+ regression test cases today.'),
(19, 'Finance meets tech — exciting changes ahead.'),
(20, '5 ways to increase customer engagement through content.'),
(21, 'Top 10 cybersecurity practices for 2025.');



INSERT INTO Comments (post_id, user_id, content)
VALUES
(1, 13, 'Congratulations!'),
(2, 14, 'Well done!'),
(3, 15, 'Looking forward to your updates.'),
(4, 16, 'Great work!'),
(5, 17, 'Very insightful!'),
(6, 18, 'Kudos to the team!'),
(7, 19, 'Interesting project.'),
(8, 20, 'Nice summary.'),
(9, 21, 'Love the perspective!'),
(10, 12, 'Thanks for sharing!');

INSERT INTO Likes (post_id, user_id)
VALUES
(1, 14),
(2, 15),
(3, 16),
(4, 17),
(5, 18),
(6, 19),
(7, 20),
(8, 21),
(9, 12),
(10, 13);

INSERT INTO Shares (post_id, user_id)
VALUES
(1, 15),
(2, 16),
(3, 17),
(4, 18),
(5, 19),
(6, 20),
(7, 21),
(8, 12),
(9, 13),
(10, 14);

INSERT INTO Groups (group_name, description, created_by)
VALUES
('Data Enthusiasts', 'A group for data analysts and scientists', 13),
('DevOps Circle', 'All about CI/CD, SRE, and cloud tools', 16),
('Design Hive', 'Creative minds sharing their work', 15),
('Product Builders', 'Product managers and innovators', 17),
('CyberGuardians', 'Cybersecurity professionals sharing insights', 21);

INSERT INTO Group_members (group_id, user_id, status)
VALUES
(1, 13, 'accepted'),
(1, 14, 'accepted'),
(2, 16, 'accepted'),
(2, 12, 'pending'),
(3, 15, 'accepted'),
(4, 17, 'accepted'),
(4, 18, 'accepted'),
(5, 21, 'accepted'),
(5, 19, 'pending'),
(3, 20, 'blocked');


SELECT * FROM Users;

SELECT * FROM Profiles;
SELECT * FROM connections;
SELECT * FROM Education;
SELECT * FROM Experience;
SELECT * FROM Skills;
SELECT * FROM Posts;
SELECT * FROM Comments;
SELECT * FROM Likes;
SELECT * FROM Shares;
SELECT * FROM Groups;
SELECT * FROM Group_members;

