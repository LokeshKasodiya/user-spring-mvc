<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image:
		url("https://wallpapers.com/images/hd/red-and-blue-calculators-yxm0myfzuym67431.jpg");
	background-size: cover;
	font-family: "Times New Roman", Times, serif;
	text-align: center;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh; /* Center vertically within the viewport */
}

form {
	width: 500px;
	padding: 20px;
	background-color: #F5F5F5;
	/* Set the background color to light yellow */
	border-radius: 10px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}


input[type="password"] {
	width: 90%;
	padding: 10px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
}
input[type="email"] {
	width: 90%;
	padding: 10px;
	margin: 8px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
}

input[type="submit"] {
	background-color: #007BFF;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
		<form action="verifyByEmail" method="get">
		<input type="email" name="email" placeholder="Enter Your Email Id"><br>
		<input type="password" name="password" placeholder="Enter Your Password"><br>
		<input type="submit" value="Find">
	</form>
</body>
</html>