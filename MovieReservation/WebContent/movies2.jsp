<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
   float: left; 
  width:10%;
 /*  padding: 0 10px; */
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 10px;
  text-align: center;
  background-color: #f1f1f1;
}
.navbar {
	width: 100%;
	height: 10%;
	background-color: #123456;
	position: absolute;
	top: 0;
	left: 0;
}

.image {
	position: absolute;
	width: 7%;
	height: 100%;
}

.movie0img {
	position: absolute;
	top: 10%;
	height: 80%;
	width: 100%;
	left: 0;
}

.button1 {
	position: absolute;
	color: black;
	padding: 16px 32px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	top: 90%;
	background-color: pink;
}

.about {
	top: 90%;
	position: absolute;
}

.checked {
	color: orange;
}

.button2 {
	background-color: #f44336;
	right: 0;
	bottom: 10%;
	position: absolute;
	color: black;
	padding: 16px 32px;
	text-align: center;
	font-size: 14px;
	margin: 4px 2px;
	top: 120%;
	display: inline;
	border-radius: 8px;
}

.button2:hover {
	cursor: pointer;
	background-color: #123456
}

.p1 {
	font-family: "Times New Roman", Times, serif;
	font-size: 18px;
}

.p2 {
	font-family: "Times New Roman", Times, serif;
	font-size: 20px;
}

.open-button {
	background-color: #b30738;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 100px;
	right: 100px;
	width: 100px;
}

/* The popup form - hidden by default */
.form-popup {
	display: none;
	position: fixed;
	bottom: 0;
	right: 15px;
	border: 3px solid #f1f1f1;
	z-index: 9;
}

/* Add styles to the form container */
.form-container {
	max-width: 300px;
	padding: 10px;
	background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	border: none;
	background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus
	{
	background-color: #ddd;
	outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
	background-color: #b30738;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	width: 50%;
	margin-bottom: 10px;
	opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
	background-color: #b30738;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
	opacity: 1;
}
.alert {
width : 50%;
  padding: 20px;
  background-color: #E6B0AA;
  color: white;
 margin-left: auto;
    margin-right: auto;
}

.closebtn {

  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>

<title>movie0</title>
</head>
<body>
	<%@include file="header.jsp"%>


	<div>
		<img src="resources/${movieDetails.movieId}.jpeg" width="100%"
			height="500" />
	</div>
	<%-- <div class="about">
		<p class="p2">
			<strong>Genre: ${movieDetails.genre}</strong>
		</p>
		<h3>
			<strong>About the movie</strong>
		</h3>
		<p class="p1">${movieDetails.description}</p>
		<h4>Language : ${movieDetails.language}</h4>
		<h4>Release date : ${movieDetails.releaseDate}</h4>
		<h4>Duration : ${movieDetails.duration} mins</h4>
		<h3>Rating : ${movieDetails.rating}</h3>
	</div> --%>
	
	<div class="row">
  <div class="column">
    <div class="card">
      <h3>Card 1</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Card 2</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Card 3</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Card 4</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
</div>

  <div class="column">
    <div class="card">
      <h3>Card 4</h3>
      <p>Some text</p>
      <p>Some text</p>
    </div>
  </div>
</div>
	
	
	<section>
	<button class="open-button" onclick="openForm()">Book Now!!</button>

      <% if(session.getAttribute("message") != null ){
    	  if(!session.getAttribute("message").toString().isBlank()
    		      ||!session.getAttribute("message").toString().isEmpty()){%>	
    	  <div class="alert">
    	  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
    	  <strong>No  movies available on this date !!</strong> </br>Please choose a different date
    	  <%session.removeAttribute("message"); %>
    	</div>
		<%
	
		session.removeAttribute("message");
    	  } } %>
		
		<div class="form-popup" id="myForm">

			<form action="theatre" class="form-container">
				<h6>Select the date</h6>

				<input type="date" id="showDate" name="showDate"> <br></br>

				<button type="submit" class="btn">Proceed</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</form>
		</div>

		<script>
			function openForm() {
				document.getElementById("myForm").style.display = "block";
			}

			function closeForm() {
				document.getElementById("myForm").style.display = "none";
			}
		</script>

	</section>


</body>
</html>