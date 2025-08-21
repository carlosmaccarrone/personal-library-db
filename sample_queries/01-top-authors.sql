-- shows the 10 authors with the most books
SELECT a.author_name, COUNT(ba.isbn) AS total_books
FROM Authors a
JOIN Book_Author ba ON a.author_id = ba.author_id
GROUP BY a.author_name
ORDER BY total_books DESC
LIMIT 10;