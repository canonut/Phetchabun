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
        <li><a href="travel.jsp">ที่ท่องเที่ยว</a></li>
        <li class="active"><a href="tourism.jsp">ข้อมูลจังหวัด</a></li>
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
เมืองมะขามหวาน อุทยานน้ำหนาว ศรีเทพเมืองเก่า เขาค้ออนุสรณ์ นครพ่อขุนผาเมืองเมืองมะขามหวานคือสมญานามของเพชรบูรณ์ จังหวัดที่อยู่ในเขตภาคเหนือตอนล่าง เป็นดินแดนแห่งขุนเขา ผืนป่าเขียวขจี ทัศนียภาพสวยงาม อากาศสดชื่นเย็นสบายตลอดปี โดยเฉพาะบริเวณเขาค้อ ที่ได้รับฉายาว่าเป็น “สวิตเซอร์แลนด์เมืองไทย”เพชรบูรณ์เดิมมีชื่อว่า "เพชรบุระ" หรือ "พืชปุระ" อันหมายถึงเมืองแห่งพืชพันธุ์ธัญญาหาร สันนิษฐานว่ามีการสร้างเมืองมาตั้งแต่ยุคสุโขทัย และยุคที่สองคือสมัยสมเด็จพระนารายณ์มหาราช ซึ่งเมืองนี้ทำหน้าที่เป็นเสมือนกำแพงชั้นนอกเพื่อป้องกันข้าศึกเข้ามารุกราน ต่อมาในสมัยอยุธยา เมืองเพชรบูรณ์กลายเป็นเมืองสำคัญในการเคลื่อนทัพผ่าน จนกระทั่งถึงสมัยรัชกาลที่ 6 เพชรบูรณ์ก็ถูกยกฐานะขึ้นเป็นจังหวัด ในยุคสมัยหนึ่ง เพชรบูรณ์กลายเป็นสมรภูมิสู้รบระหว่างพรรคคอมมิวนิสต์กับรัฐบาลไทย โดยเฉพาะในบริเวณเขาค้อและภูหินร่องกล้า กลายเป็นพื้นที่สีชมพูยาวนานกว่า 13 ปี ปัจจุบันเขาค้อและภูหินร่องกล้ได้รับการพัฒนาจนเป็นแหล่งท่องเที่ยวที่สำคัญของจังหวัดเพชรบูรณ์
</div>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/docs.min.js"></script>
      
</body>
</html>
