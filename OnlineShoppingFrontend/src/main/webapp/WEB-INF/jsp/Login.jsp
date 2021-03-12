<%@ page language="java" contentType="text/html"%>
<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
<!DOCTYPE html>
<style>
body {
	background-image:url("images/banner3.jpg");
	}
	table{border:2px solid;
	border-color:#1aa3ff;
	
	background:#ffff80;
	
	}
	td{padding:5px;}
</style>
<div class="container-fluid">
	<div class="row">
			
			<div class="col-sm-9">
			
				<form action="perform_login" method="post" style="height:100%">
	 				
					<table align="center">
						<tr>
						<td colspan="2"><h2 align="center">Login Here</h2>
						</td>
						</tr>
						<tr>
							<td class="col-sm-3 control-label">Login Name</td>
							<td><input type="text" name="username" class="col-sm-9" /></td>
						</tr>
						<tr>
							<td class="col-sm-3 control-label">Password</td>
							<td><input type="password" name="password"
								class="col-sm-9" /></td>

						</tr>
						<tr bgcolor="">
							<td colspan="2">
								<center>
									<input type="submit" value="SUBMIT" class="btn btn-primary" />
								</center>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!--<div class="col-sm-9 col-md-6 col-lg-8 ">
				<img src="images/loginimg.jpg" alt="login logo"  height="100%"/>
			</div>  -->
		</div>
		</div>
	