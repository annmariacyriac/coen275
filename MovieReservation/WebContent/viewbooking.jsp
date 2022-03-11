<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import="java.util.List"%>

<%@ page import="com.project.model.BookedShows"%>

<%@ page import="com.project.model.Show"%>

<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>

<head>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<meta charset="ISO-8859-1">

<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<title>My Bookings</title>

<style>
table, th, td {
  border:1px solid black;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
</style>





</head>

<body>

	<%@include file="header.jsp"%>
	

<h2 style="color:#b30738;">My Bookings</h2>

<table class=center style="width:80%">
  <tr>
    <td style="color:#b30738;">BookingId </td>
    <td style="color:#b30738;">Movie</td>
    <td style="color:#b30738;">Theatre</td>
    <td style="color:#b30738;">ShowDate</td>
    <td style="color:#b30738;">ShowTime</td>
    <td style="color:#b30738;">Screen</td>
     <td style="color:#b30738;">Price</td>
  </tr>
  <%	List<BookedShows> bookedShowsList= (List<BookedShows>) request.getAttribute("myBookings");
  	for(int i=0;i<bookedShowsList.size();i++){%>
  		
  		 <tr>
  	    <td><%=bookedShowsList.get(i).getBookingId()%></td>
  	    <td><%=bookedShowsList.get(i).getMovieName()%></td>
  	    <td><%=bookedShowsList.get(i).getTheatreName()%></td>
  	    <td><%=bookedShowsList.get(i).getShow().getShowDate()%></td>
  	    <td><%=bookedShowsList.get(i).getShow().getShowTime()%></td>
  	    <td><%=bookedShowsList.get(i).getScreenName()%></td>
  	     <td><%=bookedShowsList.get(i).getPrice()%></td>
  	  </tr>
 <% 	} 
  %>
</table>


</body>
</html>

	
