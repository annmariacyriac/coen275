package com.project.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.project.model.Seat;

public interface SeatService {

	public Map<Integer, List<Seat>> getSeatDetails(Integer showId, Integer screenId, HttpServletRequest request);

}
