-- replace 'Anthony' with any search term
SELECT b.title, a.author_name, g.genre_name
FROM Books b
JOIN Book_Author ba ON b.isbn = ba.isbn
JOIN Authors a ON ba.author_id = a.author_id
JOIN Book_Genre bg ON b.isbn = bg.isbn
JOIN Genres g ON bg.genre_id = g.genre_id
WHERE b.title ILIKE '%Zarathustra%' 
   OR a.author_name ILIKE '%Anthony%'
ORDER BY b.title;