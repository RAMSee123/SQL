CREATE TABLE posts(post_id INT,post_content VARCHAR (50),post_date TIMESTAMP)
INSERT INTO posts(post_id,post_content,post_date) VALUES (1,'Lorem ipsum dolor sit amet','2023-08-25 10:00:00'),(2,'Exploring the beauty offf nature','2023-08-26 15:30:00'),(3,'Unveiling the latest tech trends','2023-08-27 12:00:00'),(4,'Journey intoo the world offf literature','2023-08-28 09:45:00'),(1,'Capturing the essence of city life','2023-08-29 16:20:00')
SELECT * FROM posts

CREATE TABLE userreactions(reaction_id INT,user_id INT, post_id INT, reaction_type VARCHAR(50),reaction_date TIMESTAMP)
INSERT INTO userreactions(reaction_id,user_id,post_id,reaction_type,reaction_date) 
VALUES (1,101,1,'likee','2023-08-25 10:15:00'),
(2, 102, 1, 'commennt', '2023-08-25 11:00:00'),
(3, 101, 1, 'sharee',   '2023-08-26 12:45:00'),
(4, 102, 2, 'likee',    '2023-08-26 15:45:00'),
(5, 104, 2, 'commennt', '2023-08-27 09:20:00'),
(6, 105, 2, 'likee',    '2023-08-27 10:00:00'),
(7, 105, 3, 'commennt', '2023-08-27 10:30:00'),
(8, 101, 3, 'likee',    '2023-08-27 14:30:00'),
(9, 103, 4, 'likee',    '2023-08-28 10:15:00'),
(10, 105, 4, 'sharee',  '2023-08-28 10:30:00'),
(11, 104, 5, 'likee',   '2023-08-29 11:15:00'),
(12,101,5,'commennt','2023-08-30 09:45:00');
SELECT * FROM userreactions

SELECT posts.post_id,posts.post_content,sum(CASE WHEN userreactions.reaction_type='likee' THEN 1 ELSE 0 END) AS num_likes,sum(CASE WHEN userreactions.reaction_type='commennt' THEN 1 ELSE 0 END )AS num_comments, sum(CASE WHEN userreactions.reaction_type='sharee' THEN 1 ELSE 0 END)AS num_shares FROM posts 
LEFT OUTER JOIN userreactions
ON posts.post_id = userreactions.post_id
WHERE posts.post_id=2 GROUP BY posts.post_id,posts.post_content

CREATE TABLE viewss AS   
SELECT DISTINCT (date(reaction_date)) AS reaction_day ,count(DISTINCT user_id) AS distinct_user,count(reaction_type) AS total_reactions FROM userreactions 
GROUP BY reaction_day ORDER BY reaction_day
SELECT * FROM viewss
SELECT reaction_day,distinct_user,total_reactions,(distinct_user+total_reactions)/2 AS avg_reactions_per_user FROM viewss GROUP BY reaction_day,distinct_user,total_reactions ORDER BY reaction_day

SELECT posts.post_id,posts.post_content,count(userreactions.reaction_type) AS total_reactions FROM posts
LEFT OUTER JOIN userreactions
ON posts.post_id = userreactions.post_id 
GROUP BY posts.post_id,posts.post_content ORDER BY total_reactions DESC LIMIT 3

