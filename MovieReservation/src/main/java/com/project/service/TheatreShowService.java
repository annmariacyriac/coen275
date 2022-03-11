package com.project.service;

import java.util.List;

import com.project.model.Movie;
import com.project.model.Theatre;

public interface TheatreShowService {

	public List<Theatre> getTheatreShowsByDate(Movie movie, String showDate) ;

}
