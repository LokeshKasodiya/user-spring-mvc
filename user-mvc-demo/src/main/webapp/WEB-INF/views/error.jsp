<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
	background-attachment: fixed;
	font-family: "Times New Roman", Times, serif;
	text-align: center;
	margin: 0;
	padding: 0;
	color: black;
}

.table-container {
	display: flex;
	flex-direction: column;
	align-items: center;
}

.table-row {
	display: flex;
	justify-content: center;
}

.table-cell {
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
	background-color: #F5F5F5;
	border-radius: 5px;
}
</style>
</head>
<body>
	<div class="table-container">
		<div class="table-row">
			<div class="table-cell">
				<h2>${message }</h2>
			</div>
		</div>
	</div>
</body>
</html>