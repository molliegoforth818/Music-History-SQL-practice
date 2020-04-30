SELECT* from Genre;
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Beyonce', 1998)

 INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
      VALUES("Lemonade", "4/23/2016", 2727, "Parkwood Colombia", 28, 6)
 INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES ('SandCastles', 120, "4/23/2016", 6, 28, 23)
 INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
		VALUES ("Don't Hurt Yourself", 128, "4/23/2016", 6, 28, 23)			
SELECT
	 a.Title 'Album Title', 
	 s.Title 'Song Title',
	 b.ArtistName 'Artist Name'
FROM 
	Album a
LEFT JOIN Song s ON
	s.AlbumId = a.AlbumId
LEFT JOIN Artist b ON
	a.ArtistId = b.ArtistId
WHERE b.ArtistName Is "Beyoncé"

SELECT
	a.Title 'Album Name',
	COUNT(s.SongId) 'Song Count'
FROM
	Album a
LEFT JOIN Song s ON
	s.AlbumId = a.AlbumId
GROUP BY
	a.AlbumId

SELECT
	g.Label 'Genre Name',
	count(s.Title) 'Song Count'
FROM
	Genre g
LEFT JOIN Song s ON
	s.GenreId = g.GenreId
GROUP BY
	s.GenreId
	
SELECT
	a.Title 'Title',
	MAX(a.AlbumLength) 'Duration'
FROM Album a

SELECT
	s.Title "Title",
	MAX(s.SongLength) 'Duration'
FROM Song s			

SELECT
	s.Title "Song",
	a.Title 'Album',
	MAX(s.SongLength) 'Duration'
FROM Album a
LEFT JOIN Song s ON
	s.AlbumId = a.AlbumId









