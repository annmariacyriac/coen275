
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>movie0</title>

<style>

.open-button {
	background-color: #b30738;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 40px;
	right: 100px;
	width: 100px;
		 transform: translate(-50%, -50%);
}
.container {
  position: relative;
  text-align: center;
  color: white;

}


.centered {
  position: absolute;
  top: 60%;
  left: 40%;
  transform: translate(-50%, -50%);
  z-index:2;
  color: #b30738;
  font-weight: bold;
  text-align:left;
  
}

.bg-image{
/* filter: blur(4px);
  -webkit-filter: blur(4px);  */
  z-index:1;
  position:relative;
  opacity: 0.5;
/*    background-image: url("https://gmedia.playstation.com/is/image/SIEPDC/uncharted-hub-listing-thumb-en-16aug21?$facebook$");
 */background-color: red;
  /* Full height */
  
}
.bg2-image{
z-index:2;
position:absolute;
top:20px;
left:80px;
max-width: 20%;
 max-height: 20%;

}



#imgg{
  background-color: linear-gradient(blue, pink);
}

/* The popup form - hidden by default */
.form-popup {
	display: none;
	position: fixed;
	bottom: 0;
	right: 75px;
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
  background-color: #ff6699;
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

.aboutmovie{
padding-right: 50px;
}
</style>
</head>
<body>
<%@include file="header.jsp" %>
<section>


 <div class="container">
 <div class="bg-image">  <img  id="imgg" src="resources/${movieDetails.movieId}.jpeg" width="100%" height="400"> </div> 
 <div class="bg2-image"><img src="resources/movie${movieDetails.movieId}.jpg"></div>
  <div class="centered">	
        <h4><b>Language : ${movieDetails.language}</b></h4>
		<h4><b>Release date : ${movieDetails.releaseDate}</b></h4>
		<h4><b>Duration : ${movieDetails.duration} mins</b></h4>
		<h4><b>Rating : ${movieDetails.rating}</b></h4>
	
  
</div>
</section>
<div class="aboutmovie">
<h3>
			<strong>About the movie</strong>
		</h3>
		<h4>${movieDetails.description}</h4>
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

				<input type="date" id="showDate" name="showDate">
				<br></br>
				
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







<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<style>
/* body {
	background: Beige !important;
} */

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
	    -webkit-box-align: center;
    align-items: center;
    display: flex;
    -webkit-box-flex: 1;
    flex-grow: 1;
    max-width: 1240px;
    margin: 0px auto;
    position: relative;
    width: 100%;
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
	bottom: 40px;
	right: 100px;
	width: 100px;
		 transform: translate(-50%, -50%);
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
</style>

<title>movie0</title>
</head>
<body>
	<%@include file="header.jsp"%>


	<div>
		<img src="m0.jpeg"   width="100%" height="500"/>
	
	<div class="about">
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
		<h3> Test : ${movieDetails.testa.testStr}</h3>
<h3> Test : ${movieDetails.test.testInt}</h3>
	</div>
	</div>
	<section>

		<!-- <a href="test.jsp"><button class="button2"> Book now!</button></a> -->

		<button class="open-button" onclick="openForm()">Book Now!!</button>

		<div class="form-popup" id="myForm">

			<form action="theatre" class="form-container">
				<h6>Select the date</h6>

				<input type="date" id="showDate" name="showDate">
				<br></br>
				
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
</html> --%>