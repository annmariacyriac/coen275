package com.project.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.db.DBConnect;
import com.project.model.Movie;

public class MovieDaoImpl {

	public Movie getMovieDetails(int movieId) {

		DBConnect dbcon = new DBConnect();
		Movie movie = new Movie();
		try {

			Connection con = dbcon.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from movies where movieid = " + movieId + ";");
//			Statement stmt1 = con.createStatement();
//			ResultSet rs1 = stmt1.executeQuery("select distinct showdate from shows where movieid = " + movieId + ";");
//			
//			List<String> availableDates = new ArrayList<>();
//			while (rs1.next()) {
//				availableDates.add(rs.getString("showdate"));
//			}
			while (rs.next()) {
				movie.setMovieId(rs.getInt("movieid"));
				movie.setMovieName(rs.getString("moviename"));
				movie.setDescription(rs.getString("description"));
				movie.setDuration(rs.getInt("duration"));
				movie.setLanguage(rs.getString("language"));
				movie.setGenre(rs.getString("genre"));
				movie.setReleaseDate(rs.getDate("releasedate"));
				movie.setRating(rs.getFloat("rating"));
			//	movie.setAvailableShows(availableDates);
			}
			

			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		return movie;

	}

}
