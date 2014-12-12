<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<%
	String username_session = (String)session.getAttribute("username_session");
%>
<html>
<title>ที่กิน</title>
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
        <li ><a href="travel.jsp">ที่ท่องเที่ยว</a></li>
        <li><a href="rest.jsp">ที่พัก</a></li>
        <li class="active"><a href="eat.jsp">ที่กิน</a></li>
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
          <center><h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;สถานที่กิน</h4></center>
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
+ '{"heading":"ก้ามปูเฮาส์","picture":"e1.jpg","paragraph":"ถ.เพชรเจริญ ต.ในเมือง	เบอร์ติดต่อ056-720697	อาหารแนะนำ ยำกระเทียมโทน " },'
+ '{"heading":"ขนมจีนคุณตา","picture":"e2.jpg","paragraph":"ถ.สระบุรี- หล่มสัก ต.นางั่ว	เบอร์ติดต่อ056-741586	อาหารแนะนำ ขนมจีน,ส้มตำปูม้า" },'
+ '{"heading":"อ.กุ้งเผา","picture":"e3.jpg","paragraph":"ถ.สระบุรี-หล่มสัก ต.นางั่ว	เบอร์ดืดต่อ 087-2236009 อาหารแนะนำ กุ้งอบวุ้นเส้น,ปลาหมึกนึ่งมะนาว" },'
+ '{"heading":"สุกี้เจ๊เนี๊ยบ","picture":"e4.jpg","paragraph":"ถ.เพชรเจริญ ต.ในเมือง	เบอร์ตืดต่อ 056-727562	อาหารแนะนำ สุกี้น้ำ/แห้ง,อาหารต่างๆอีกมากมาย " },'
+ '{"heading":"ไร่จันทร์แรม","picture":"e6.jpg","paragraph":"2196 เลขที่ 152 ม.8 ต.เขาค้อ อ.เขาค้อ จ.เพชรบูรณ์ อาหารแนะนำ อาหารต่างๆอีกมากมายหลายอย่าง " },'
+ '{"heading":"นิดอาหารป่า","picture":"e5.jpg","paragraph":"ต.วังชมพู อ.เมือง	เบอร์ตืดต่อ 056-771051	อาหารแนะนำ ปลาค้าวผัดฉ่า,มะระยัดไข่" }]}';
var result = eval("(" + data + ")");
for (var i = 0; i < result.travel.length; i++) {
	$("#travel").append("<div class=\"col-md-3\"><div class=\"panel panel-default\"><div class=\"panel-heading\">"+result.travel[i].heading+"</h4></div><img src=\"img/"+result.travel[i].picture+"\" id=\"travel\" width=\"240\" height=\"260\"><div class=\"panel-body\"><p>"+result.travel[i].paragraph+"</p></div></div></div></div>");
}   
});
</script> 
