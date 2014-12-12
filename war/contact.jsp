<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<%
	String username_session = (String)session.getAttribute("username_session");
%>
<html>
<title>ติดต่อเรา</title>
<head>
<%
	request.setCharacterEncoding("UTF-8");
%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="assets/js/ie-emulation-modes-warning.js"></script>
<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
<link href="carousel.css" rel="stylesheet">
</head>
<body>


	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand">เพชรบูรณ์</a>
			</div>

			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="index.jsp">หน้าหลัก</a></li>
        			<li><a href="travel.jsp">ที่ท่องเที่ยว</a></li>
        			<li><a href="rest.jsp">ที่พัก</a></li>
       				<li><a href="eat.jsp">ที่กิน</a></li>
        			<li><a href="about.jsp">ข้อมูลจังหวัด</a></li>
					<li class="active"><a href="contact.jsp">ติดต่อเรา</a></li>
				</ul> 
				
				<ul class="nav navbar-nav navbar-right">
            <% if(null!=username_session){ %>
            	<li>
                    <a href="#">Hi'&nbsp;&nbsp;<%=username_session%></a>
                </li>
                <li>
                    <a href="logout.jsp">Logout</a>
                </li>
            <% } else { %>
     	<div class="form-group">
        <form action="chkLogin.jsp" method="post" class="navbar-form navbar-right" role="form">
          <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
          <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
          <input type="submit" name="submit" value="Sign in">
        </form>
        </div>
      <% } %>
      </ul>
      			
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<hr>
			<br>
			<div class="col-md-3">
				<img src="img/176e3da2-f808-4e67-8812-51c5abb33d89.png" height="300">
			</div>
			<br>
			<div class="col-md-9">
				<h3>เลขทะเบียน: 5405100018</h3>
				<h3>ชื่อ: นายณัฐพงษ์ ลิ้มสุเวช</h3>
				<h3>สาขา: วิทยาการคอมพิวเตอร์</h3>
				<h3>คณะ: วิทยาศาสตร์และเทคโนโลยี</h3>
				<h3>มหาลัย: มหาวิทยาลัยหอการค้าไทย</h3>
			</div>
			</div>
		<br>
		<br>
		<div class="row">
			<div class="col-md-3">
				<img src="img/10656419_4740335162346_1630044810_n.jpg" height="300">
			</div>
			<div class="col-md-9">
				<h3>เลขทะเบียน: 5405100029</h3>
				<h3>ชื่อ: นายภาณุพงศ์ แสงส่อง</h3>
				<h3>สาขา: วิทยาการคอมพิวเตอร์</h3>
				<h3>คณะ: วิทยาศาสตร์และเทคโนโลยี</h3>
				<h3>มหาลัย: มหาวิทยาลัยหอการค้าไทย</h3>

			</div>
		</div>
	</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/docs.min.js"></script>
</body>
</html>
