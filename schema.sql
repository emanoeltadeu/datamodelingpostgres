CREATE TABLE IF NOT EXISTS songplays (
        songplay_id SERIAL PRIMARY KEY,
        start_time BIGINT,
        user_id INT,
        level VARCHAR,
        song_id VARCHAR,
        artist_id VARCHAR,
        session_id INT,
        location VARCHAR,
        user_agent VARCHAR
    );
   
     CREATE TABLE IF NOT EXISTS users (
        user_id INT PRIMARY KEY,
        first_name VARCHAR,
        last_name VARCHAR,
        gender VARCHAR,
        level VARCHAR
    );
    
       CREATE TABLE IF NOT EXISTS songs (
        song_id VARCHAR NOT NULL PRIMARY KEY,
        title VARCHAR NOT NULL,
        artist_id VARCHAR NOT NULL,
        year INT,
        duration FLOAT);
       
       CREATE TABLE IF NOT EXISTS artists (
        artist_id VARCHAR NOT NULL PRIMARY KEY,
        name VARCHAR NOT NULL,
        location VARCHAR,
        latitude FLOAT,
        longitude FLOAT);

       CREATE TABLE IF NOT EXISTS time (
        start_time BIGINT PRIMARY KEY,
        hour INT,
        day INT,
        week INT,
        month INT,
        year INT,
        weekday INT
    );
    

--Adding foreign keys to songplays table
ALTER TABLE sparkifydb.songplays DROP CONSTRAINT IF EXISTS users_fk;
ALTER TABLE sparkifydb.songplays ADD CONSTRAINT users_fk FOREIGN KEY (user_id) REFERENCES sparkifydb.users(user_id);

ALTER TABLE sparkifydb.songplays DROP CONSTRAINT IF EXISTS songs_fk;
ALTER TABLE sparkifydb.songplays ADD CONSTRAINT songs_fk FOREIGN KEY (song_id) REFERENCES sparkifydb.songs(song_id);

ALTER TABLE sparkifydb.songplays DROP CONSTRAINT IF EXISTS time_fk;
ALTER TABLE sparkifydb.songplays ADD CONSTRAINT time_fk FOREIGN KEY (start_time) REFERENCES sparkifydb.time(start_time);

ALTER TABLE sparkifydb.songplays DROP CONSTRAINT IF EXISTS artist_fk;
ALTER TABLE sparkifydb.songplays ADD CONSTRAINT artist_fk FOREIGN KEY (artist_id) REFERENCES sparkifydb.artists(artist_id);
