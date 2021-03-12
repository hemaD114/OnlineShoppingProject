<%@include file="/WEB-INF/jsp/CommonHeader.jsp"%>
  <style>
  /* Make the image fully responsive */
  .carousel-inner img {
  	margin-top:30px;
    width: 100%;
    height: 100%;
  }
  </style>
<body>
	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">
			
			
			<div class="carousel-inner">
				
				<div class="carousel-item">
					<img src="images/banner2.jpg" alt="Chicago" width="1200" height="500">
				</div>
				
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>


	</div>
</body>
</html>