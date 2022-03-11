package com.project.service.impl;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.dao.impl.BookingDaoImpl;
import com.project.model.BookShow;
import com.project.model.Seat;
import com.project.model.Show;
import com.project.model.User;
import com.project.service.BookingService;

public class BookingServiceImpl implements BookingService {

	public int bookShow(HttpSession session) {
	
		BookShow bookShow = new BookShow();
		bookShow.setUserid(((User)session.getAttribute("user")).getUserId());
		bookShow.setShowId(((Show) session.getAttribute("showDetails")).getShowId());
		
		List<Seat> selectedSeats = (List<Seat>)session.getAttribute("selectedSeatDetails");
		bookShow.setSeats(selectedSeats);
		
		bookShow.setPrice(calculateTotalPrice(selectedSeats));
		
		bookShow.setBookingId(prepareBookingId());
		session.setAttribute("bookingId", bookShow.getBookingId());
		
		BookingDaoImpl bookingDao = new BookingDaoImpl();
		return bookingDao.bookShow(bookShow);
		
		
	}

	public String prepareBookingId() {
		  
        // chose a Character random from this String
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"
                                    + "abcdefghijklmnopqrstuvxyz";
  
        // create StringBuffer size of AlphaNumericString
        StringBuilder sb = new StringBuilder(6);
  
        for (int i = 0; i < 6; i++) {
  
            // generate a random number between
            // 0 to AlphaNumericString variable length
            int index
                = (int)(AlphaNumericString.length()
                        * Math.random());
  
            // add Character one by one in end of sb
            sb.append(AlphaNumericString
                          .charAt(index));
        }
  
        return "SC_" +sb.toString();
	    
		
	}

	public int calculateTotalPrice(List<Seat> selectedSeats) {
		int totalPrice = 0;
		for (Seat seat : selectedSeats) {		
				totalPrice = totalPrice + seat.getPrice();		
		}
		return totalPrice;
	}
}
