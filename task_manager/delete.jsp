<html>
<head>
<title>
Delete
</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page5">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
            <li><a href="login.html">Sign In</a></li>
            <li><a href="empregister.html">Employee Register</a></li>
            <li><a href="adminregister.html">Admin Register</a></li>
            <li><a href="feedback.html">Feedback</a></li>
            <li><a href="login.html">Sign In</a></li>
            <li><a href="aboutus.html">About Us</a></li>
            <li><a href="index.html">Log Out</a></li>
           
          </ul>
        </nav>
        <ul id="icons">
          <li><a href="#"><img src="images/icons1.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/icons2.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo">TASK MANAGER</a></h1>
      </div>
      <div id="slogan"> We Will make your Work<span>easier for you!</span> </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            
              <figure class="left marg_right1"><img src="images/page2_img1.jpg" alt=""></figure>
              <div class="pad_left1">
              <h2 class="pad_bot1">DELETE RECORDS</h2>
            </div>
            <div class="wrapper pad_bot1">
            </div>
            <div class="pad_left1">
              <div class="box2">
                <div class="wrapper">
                  <div class="cols">
<font face="Britannic Bold"><B><U><h1>ENTER DETAILS HERE:</h1></U></B></font>
<form method="post">
<table>
<tr><td><label>DeptNo.</label></td><td><input type="number" value="" name="dno"/></td></tr>
<tr><td><label>AdminNo.</label></td><td><input type="number" value="" name="ano"/></td></tr>
<tr><td><label>EmpNo.</label></td><td><input type="number" value="" name="empno"/></td></tr>
<tr><td><input type="submit" value="delete" class="button"></td></tr>
<tr><td><a href="taskmanager.html">BACK</a></td></tr>
<tr><td><a href="index.html">LOGOUT</a></td></tr>
</table>
</form>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<%
 String dno=request.getParameter("dno");
   String ano=request.getParameter("ano");
   String empno=request.getParameter("empno");
  
%>
<%
if("post".equalsIgnoreCase(request.getMethod()))
{
	try
{
	Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException ex)
{	out.print(ex);
}
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
Statement stmt=con.createStatement();
String qu="delete from registration.taskmanager where dno='"+dno+"' and ano='"+ano+"'";
int totalrow=stmt.executeUpdate(qu);
if(totalrow>0)
{
%>
alert("successfully data deleted")
<%
}
else
{
System.out.println(" data does not exist deleted");
}
}
catch(Exception ex)
{
out.print("Exception:"+ex);
}
}
%>