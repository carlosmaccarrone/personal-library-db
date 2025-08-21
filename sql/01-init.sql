-- Authors table
CREATE TABLE IF NOT EXISTS Authors (
    author_id SERIAL PRIMARY KEY,
    author_name TEXT
);

-- Genres table
CREATE TABLE IF NOT EXISTS Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name TEXT
);

-- Books table
CREATE TABLE IF NOT EXISTS Books (
    isbn TEXT PRIMARY KEY,
    title TEXT
);

-- Book_Author table (many-to-many relationship)
CREATE TABLE IF NOT EXISTS Book_Author (
    isbn TEXT REFERENCES Books(isbn),
    author_id INTEGER REFERENCES Authors(author_id),
    PRIMARY KEY (isbn, author_id)
);

-- Book_Genre table (many-to-many relationship)
CREATE TABLE IF NOT EXISTS Book_Genre (
    isbn TEXT REFERENCES Books(isbn),
    genre_id INTEGER REFERENCES Genres(genre_id),
    PRIMARY KEY (isbn, genre_id)
);