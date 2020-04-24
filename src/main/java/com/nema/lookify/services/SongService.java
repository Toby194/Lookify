package com.nema.lookify.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;


import com.nema.lookify.models.Song;
import com.nema.lookify.repositories.SongRepository;

@Service
public class SongService {
	private SongRepository songRepo;
	
	public SongService(SongRepository songRepo) {
		this.songRepo = songRepo;

	}
	
	//returns all the songs
	public List<Song> allSongs(){
		return (List<Song>) songRepo.findAll();
	}
	
	//returns all songs with artist name including search string
	public List<Song> searchSongs(String search){
		return songRepo.findByArtistContaining(search);
	}
	
	//returns all songs in order of ratings
	public List<Song> searchTopTen(){
		return songRepo.findTop10ByOrderByRatingDesc();
	}
	
	//create a song
	public Song createSong(Song s) {
		return songRepo.save(s);
	}
	
	//retrieves a song
	public Song findSongById(Long id) {
		Optional<Song> optionalSong = songRepo.findById(id);
		if(optionalSong.isPresent()) {
			return optionalSong.get();
		} else {
			return null;
		}
	}
		
		//update a song
	public Song updateSong(Song song) {
		return songRepo.save(song);
		}
		
		//delete a song
	
	public void deleteSong(Long id) {
		songRepo.deleteById(id);
	}
}
