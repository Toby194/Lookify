package com.nema.lookify.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.nema.lookify.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {
	//this method retrieves all the languages from the database
	List<Song> findAll();
	
	//this method retrieves all songs from a specific artist
	List<Song> findByArtistContaining(String search);
	
	//this method retrieves the 10 songs with the highest ratings
	List<Song> findTop10ByOrderByRatingDesc();
	
	//this method retrieves the songs with the highest ratings
	List<Song> findAllByOrderByRatingDesc();

}
