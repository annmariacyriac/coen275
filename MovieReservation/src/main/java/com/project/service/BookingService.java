package com.project.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.project.model.Seat;

public interface BookingService {

	public int bookShow(HttpSession session);

	public String prepareBookingId();

	public int calculateTotalPrice(List<Seat> selectedSeats);
}
