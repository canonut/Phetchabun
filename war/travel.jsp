<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.io.*, java.sql.*" errorPage="" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<%
	String username_session = (String)session.getAttribute("username_session");
%>
<html>
<title>หน้าหลัก</title>
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
        <li class="active"><a href="travel.jsp">ที่ท่องเที่ยว</a></li>
        <li><a href="#">ข้อมูลจังหวัด</a></li>
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
          <center><h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;สถานที่เที่ยว</h4></center>
        </div>
        </div>
      </div>
      </div>
      <section id="provider">
<div id="travel"></div>
</section>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/docs.min.js"></script>
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
+ '{"heading":"พระธาตุผาซ่อนแก้ว","picture":"1.jpg","paragraph":"ชมความงดงามของเดจีย์สีเหลืองทองอร่ามที่เห็นโดดเด่นจับตามาแต่ไกล มาที่นี่นอกจากจะได้สัมผัสบรรยากาศอันแสนเงียบสงบของสถานที่ซึ่งเป็นศูนย์ปฏิบัติธรรมแล้ว เรายังได้สักการะพระบรมสารีริกธาตุในองค์พระธาตุเพื่อเป็นสิริมงคลของชีวิตอีกด้วย " },'
+ '{"heading":"ภูทับเบิก","picture":"2.jpg","paragraph":"สัมผัสทะเลหมอกบนยอดภูเขา ชื่นชมความเขียวขจีของพรรณไม้ สูดอากาศบริสุทธิ์ และเฝ้ามองความสวยงามของพระอาทิตย์ขึ้นยามเช้าและยามเย็น ต้องไม่พลาดที่นี่เลยครับ" },'
+ '{"heading":"ไร่กะหล่ำปลี","picture":"3.jpg","paragraph":"เต็มไปหมดทุกภูเขา เราสามารถเดินไปดูเก็บกะหล่ำปลี ซึ่งก็เป็นชาวเขาเผ่าม้ง จะขอซื้อมากินก็ได้ราคาแสนถูกและสดกรอบเหนือคำบรรยาย" }]}';
var result = eval("(" + data + ")");
for (var i = 0; i < result.travel.length; i++) {
	$("#travel").append("<div class=\"col-md-4\"><div class=\"panel panel-default\"><div class=\"panel-heading\">"+result.travel[i].heading+"</h4></div><img src=\"img/"+result.travel[i].picture+"\" id=\"travel\" width=\"419\" height=\"260\"><div class=\"panel-body\"><p>"+result.travel[i].paragraph+"</p></div></div></div></div>");
}   
});
</script>
