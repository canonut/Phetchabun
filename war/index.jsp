<!DOCTYPE html>
<%
	String username_session = (String)session.getAttribute("username_session");
%>
<html lang="en">
<head>
  <meta charset="utf-8">
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
        <li class="active"><a href="index.jsp">หน้าหลัก</a></li>
        <li><a href="#">ที่ท่องเที่ยว</a></li>
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
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="img/_DSF5894.jpg" alt="First slide">
    </div>
    <div class="item">
      <img src="img/IMG_9222.jpg" alt="Second slide">
    </div>
    <div class="item">
      <img src="img/IMG_9121.jpg" alt="Third slide">
  </div>
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
</div>
</div><!-- /.carousel -->

<div class="container">
  <div class="col-md-4">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;ที่กิน</h4>
      </div>
      <img class="img-responsive img-portfolio img-hover" src="img/1325671070_800645.jpg" alt="">
      <div class="panel-body">
        <p>ไร่จันทร์แรม  เพชรบูรณ์</p>
        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="panel panel-default">
        <div class="panel-heading">
          <h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;ที่เที่ยว</h4>
        </div>
        <img class="img-responsive img-portfolio img-hover" src="img/10721365_4806225449562_1428579560_n.jpg" alt="">
        <div class="panel-body">
          <p>ทุ่งแสลงหลวง</p>
          </div>
        </div>
      </div>
      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4><span class="glyphicon glyphicon-cloud"></span>&nbsp;ที่พัก</h4>
          </div>
          <img class="img-responsive img-portfolio img-hover" src="img/10617628_4806202488988_236025488_n.jpg" alt="">
          <div class="panel-body">
            <p>TheSense วิวทะเลหมอกเขาค้อ</p>
            </div>
          </div>
        </div>
      </div>

      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/docs.min.js"></script>
    </body>
    </html>
</html>