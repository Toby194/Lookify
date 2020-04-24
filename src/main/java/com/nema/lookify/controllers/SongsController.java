package com.nema.lookify.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nema.lookify.models.Song;
import com.nema.lookify.services.SongService;

@Controller
public class SongsController {
	private final SongService songService;
	public SongsController(SongService songService) {
		this.songService = songService;
	}
	
	//Welcome Page
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	//Dashboard that shows all songs
	@RequestMapping("/dashboard")
	public String dashboard(Model model) {
		List<Song> songs = songService.allSongs();
		model.addAttribute("songs", songs);
		return "dashboard.jsp";
	}
	
	//Creating new songs
	@RequestMapping("/songs/new")
	public String newSong(@ModelAttribute("song") Song song) {
		return "new.jsp";
	}
	
	
	@RequestMapping(value="/songs", method=RequestMethod.POST)
	public String createSong(@Valid @ModelAttribute("song") Song song, BindingResult result) {
		if(result.hasErrors()) {
			return "new.jsp";
		} else {
			songService.createSong(song);
			return "redirect:/dashboard";
		}
	}
	//search by id
	@RequestMapping("/songs/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Song song = songService.findSongById(id);
		if(song != null) {
		model.addAttribute("song", song);
		return "searchbyid.jsp";
	} else {
		return "redirect:/dashboard";
		}
	}
	
	//Delete Songs
	@RequestMapping("/songs/{id}/destroy")
	public String delete(@PathVariable("id") Long id, Model model) {
		songService.deleteSong(id);
		return "redirect:/dashboard";
	}
	//Top Ten songs
	@RequestMapping("/search/topTen")
	public String searchTopten(Model model) {
		List<Song> songs = songService.searchTopTen();
		model.addAttribute("songs", songs);
		return "topten.jsp";
	}
	//search by artist name for songs
	@RequestMapping ("songs/search")
	public String searchSongs(Model model, @RequestParam("searchQuery") String searchQuery) {
		List<Song> songs = songService.searchSongs(searchQuery);
		model.addAttribute("songs", songs);
		return "search.jsp";
	}
}
