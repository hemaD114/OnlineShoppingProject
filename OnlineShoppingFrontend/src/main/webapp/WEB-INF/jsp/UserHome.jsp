<%@ page language="java" contentType="text/html"%>
<%@include file="CommonHeader.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>USER Home</title>
</head>
<style>
body {
	background: #ccccff;
}

.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	max-width: 300px;
	margin: auto;
	text-align: center;
	font-family: arial;
	background: white;
}

.price {
	color: grey;
	font-size: 22px;
}

.card button {
	border: none;
	outline: 0;
	padding: 12px;
	color: white;
	background-color: #000;
	text-align: center;
	cursor: pointer;
	width: 100%;
	font-size: 18px;
}

.card button:hover {
	opacity: 0.7;
}

.row {
	border-spacing: 10px;
}

.col-sm-4 {
	height: 40%;
}

.col-sm-12 {
	background: #ccccff;
}

h1 {
	color: #662900;
}
</style>
<body>

	<div class="col-sm-12">
		<img src="images/user.jpg" />
		<i><b>Welcome : ${sessionScope.username} Enjoy your shopping..!!</b></i>
	</div>
	<div class="container-fluid">
		<div class="container-fluid">
			<div class="row">
				<c:forEach items="${productList }" var="product">
					<div class="col-sm-4">
						<div class="card">
							<a target="_blank" href="images/1.jpg"> <img
								src="images/laptop.jpg" class="img-thumbnail" style="width: 50%">
							</a>
							<p>
								<a href="#"><h1>${product.productName}</h1></a>
							<h6>${product.productDesc }</h6>
							<h3>
								<i class="fa fa-rupee"></i>${product.price}</h3>
							</p>

						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
</body>
</html>