-- 1.	Найти все комментарии(comment_content) в блоге и их автора, оставленные пользователем admin
SELECT comment_content, comment_author 
FROM wp_comments WHERE comment_author='admin';

-- 2.	Найти все заголовки постов и количество комментариев, где количество комментариев находится в диапазоне от 1 до 5
SELECT post_title, comment_count 
FROM wp_posts 
WHERE comment_count BETWEEN 1 AND 5;

-- 3.	Найти все заголовки постов и их уникальные комментарии, если они есть
SELECT DISTINCT wp_posts.post_title, wp_comments.comment_content 
FROM wp_posts 
LEFT JOIN wp_comments ON wp_posts.ID=wp_comments.comment_post_ID;

-- 4.	Найти все комментарии(comment_content) и заголовки постов, у которых буква “e” в текст комментария является третьей с конца
SELECT wp_posts.post_title, wp_comments.comment_content 
FROM wp_posts 
JOIN wp_comments ON wp_posts.ID=wp_comments.comment_post_ID 
WHERE wp_comments.comment_content LIKE '%e__';

-- 5.	**Вывести: названия категорий, заголовки постов и контент комментариев, которые соответствуют друг другу
SELECT wp_terms.name, wp_posts.post_title, wp_comments.comment_content
FROM wp_comments 
JOIN wp_posts ON wp_posts.ID=wp_comments.comment_post_ID
JOIN wp_term_relationships ON wp_posts.ID=wp_term_relationships.object_id
JOIN wp_term_taxonomy ON wp_term_relationships.term_taxonomy_id=wp_term_taxonomy.term_taxonomy_id
JOIN wp_terms ON wp_term_taxonomy.term_id=wp_terms.term_id;

