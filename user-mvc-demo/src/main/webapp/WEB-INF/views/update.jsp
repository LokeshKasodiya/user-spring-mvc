<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Apply some basic styling to the form and labels */
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

form label {
	display: block;
	margin-bottom: 5px;
}

/* Style input fields */
form input[type="text"], form input[type="password"], form input[type="email"],
	form input[type="number"] {
	width: 90%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	margin: 80x 0;
}

/* Style radio buttons */
form input[type="radio"] {
	margin-right: 10px;
}

/* Style the Register button */
form button {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: #3498db;
	color: #fff;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

form button:hover {
	background-color: #1c87c9;
}
</style>
</head>
<body>
	<form:form modelAttribute="u" action="update" method="post">
		<form:label path="id">Id</form:label>
		<form:input path="id"/>
		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<form:label path="phone">Phone Number</form:label>
		<form:input path="phone" />
		<form:label path="email">Email_Id</form:label>
		<form:input path="email" />
		<form:label path="age">Age</form:label>
		<form:input path="age" />
		<form:label path="password">Password</form:label>
		<form:password path="password"/>
		<form:button>Update</form:button>
	</form:form>
</body>
</html>