<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<style>
body {
	background-image:url("images/banner3.jpg");
	}
#admindiv {
	background: #ffcc00;
	align: center;
	border: 2px solid;
}
#maintable{
border: 2px solid;
}
#buttondiv{
background: #e0ebeb;}

h3 {
	color: green;
	align: center;
}

h2 {
	color: #006080;
}

td {
	align: center;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN HOME</title>
</head>
<body>
	<div class="container-fluid">
		<table id="maintable">
			<tr>
				<td id="admindiv" class="col-sm-4">
					<table>
						<tr>
							<td><img src="images/admin.jpg" /></td>
						</tr>
						<tr>
							<td><h2>${sessionScope.username}</h2></td>
						</tr>
						<tr>
							<td>
								<h3>
									Welcome in Admin Module 
								</h3>
							</td>
						</tr>
					</table>


				</td>
				<td id="buttondiv">
					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-8">
								<h1>
									<a href="showCategory">Manage Categories</a>
								</h1>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8">
								<h1>
									<a href="showSupplier">Manage Supplier</a>
								</h1>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-8">
								<h1>
									<a href="showProduct">Manage Product</a>
								</h1>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>
	</div>

</body>
</html>