<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<%
	String username_session = (String)session.getAttribute("username_session");
%>
<html>
<title>ที่พัก</title>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
   	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="assets/js/ie-emulation-modes-warning.js"></script>
	<script src="assets/js/ie10-viewport-bug-workaround.js"></script>
	<link href="carousel.css" rel="stylesheet">
</head>
<body>


  <nav class="navbar navbar-inverse" role="navigation">
   <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand">เพชรบูรณ์</a>
    </div>

    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp">หน้าหลัก</a></li>
        <li><a href="travel.jsp">ที่ท่องเที่ยว</a></li>
        <li class="active"><a href="rest.jsp">ที่พัก</a></li>
        <li><a href="eat.jsp">ที่กิน</a></li>
        <li><a href="about.jsp">ข้อมูลจังหวัด</a></li>
        <li><a href="contact.jsp">ติดต่อเรา</a></li>
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
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">
          <center><h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;สถานที่พัก</h4></center>
        </div>
        </div>
      </div>
      </div>
       <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
      <section id="provider">
<div id="travel"></div>
</section>
</div>
        <div class="col-md-1"></div>
      </div>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/docs.min.js"></script>
      <script>
	var xmlhttp = new XMLHttpRequest();

	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){ 
			document.getElementById("adver").innerHTML = xmlhttp.responseText;
			
		}
	}

	var url="loadnews.jsp";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
</script>
    </body>
    </html>
</html>
<script>
$(document).ready(function(){
$(".tool").tooltip();
});
</script>
</body>
</html>
<script>
$(document).ready(function() {
var data = '{"travel":['
+ '{"heading":"ชวนชม การ์เดนริเวอร์","picture":"r1.jpg","paragraph":"169 ถ.สระบุรี-หล่มสัก ม.9 ต.นางั่ว จำนวนห้องพัก14 หลัง	ราคา 500	เบอร์ติดต่อ081-8438736" },'
+ '{"heading":"โฆษิตฮิลล์","picture":"r2.jpg","paragraph":"39 ถ.สละบุรี-หล่มสัก ต.ในเมือง     	จำนวนห้อง143 ห้อง	ราคา 1200-3,600	เบอร์ดืดต่อ056-743642-5 " },'
+ '{"heading":"TheSense","picture":"r5.jpg","paragraph":"180 หมู่12 ต.เขาค้อ อ.เขาค้อ จ.เพชรบูรณ์ 67270 รูปแบบรีสอร์ท : ไพรเวทรีสอร์ท ราคา : 4,500 - 6,200 บาท " },'
+ '{"heading":"ปรายฟ้ารีสอร์ท","picture":"r4.jpg","paragraph":"ปรายฟ้ารีสอร์ท	ถ.บุรกรรมโกวิท ต.ป่าเลา	จำนวนห้อง18 ห้อง	ราคา350 เบอร์ตืดต่อ056-744355" }]}';
var result = eval("(" + data + ")");
for (var i = 0; i < result.travel.length; i++) {
	$("#travel").append("<div class=\"col-md-3\"><div class=\"panel panel-default\"><div class=\"panel-heading\">"+result.travel[i].heading+"</h4></div><img src=\"img/"+result.travel[i].picture+"\" id=\"travel\" width=\"240\" height=\"260\"><div class=\"panel-body\"><p>"+result.travel[i].paragraph+"</p></div></div></div></div>");
}   
});
</script> 
