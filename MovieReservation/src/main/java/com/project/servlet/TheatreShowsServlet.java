package com.project.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.model.Movie;
import com.project.model.Theatre;
import com.project.service.impl.TheatreShowServiceImpl;

/**
 * Servlet implementation class TheatreServlet
 */
@WebServlet("/theatre")
public class TheatreShowsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("movieId"));

		System.out.println(request.getParameter("showDate"));

		TheatreShowServiceImpl theatreShowService = new TheatreShowServiceImpl();
		
		List<Theatre> theatres = theatreShowService.getTheatreShowsByDate((Movie)session.getAttribute("movieDetails"),
				request.getParameter("showDate"));
		
		if(theatres.isEmpty() || theatres == null) {
			session.setAttribute("message", "Movie is not available on the selected date ; Try another date !");
			request.getRequestDispatcher("movies.jsp").forward(request, response);
		}
		else {
			System.out.println(theatres.get(0).getTheatreName());
			System.out.println(theatres.get(1).getTheatreName());
			
			session.setAttribute("allTheatres", theatres);
			request.setAttribute("theatreDetails", theatres);
			request.getRequestDispatcher("theatres.jsp").forward(request, response);
		}
		

		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
