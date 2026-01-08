-- 1. Total songs count
SELECT COUNT(*) AS total_songs 
FROM spotifyclean;

-- 2. Top 20 most popular songs
SELECT track_name, artist_name, popularity
FROM spotifyclean
ORDER BY popularity DESC
LIMIT 20;

-- 3. Highest Avg Popularity by Genre
SELECT genre, AVG(popularity) AS avg_popularity
FROM spotifyclean
GROUP BY genre
ORDER BY avg_popularity DESC;

-- 4. Distribution based on Popularity Level
SELECT popularity_level, COUNT(*) AS total_songs
FROM spotifyclean
GROUP BY popularity_level;

-- 5. Artists with Most Hit Songs
SELECT artist_name, COUNT(*) AS hit_count
FROM spotifyclean
WHERE popularity >= 70
GROUP BY artist_name
ORDER BY hit_count DESC
LIMIT 20;