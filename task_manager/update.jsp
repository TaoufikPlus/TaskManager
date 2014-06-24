<html>
<head>
<title>
Update
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
              <h2 class="pad_bot1">UPDATE THE RECORDS</h2>
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
<tr><td><label>Empno</label></td><td><input type="number" value="" name="empno"/></td></tr>
<tr><td>select column name:</td>
<td><select name="select1">
<option value="1">Departmnet No.</option>
<option value="2">Admin No.</option>
<option value="3">Employee No.</option>
<option value="4">Date of assign</option>
<option value="5">Deadline </option>
<option value="6">Task Name </option>
<option value="7">Description </option>
<option value="8">Task Assifnee </option>
<option value="9"> Number of Assignee </option>
<option value="10">Department Name </option>
<option value="11">E-mail Id </option>
<option value="12">Project Name </option>
<option value="13">Status </option>
<option value="14">Module Completed</option>



</td>
<tr><td><label>Department No.</label></td><td><input type="number" value="" name="dno"/></td></tr>
<tr><td><label>New Value</label></td><td><input type="text" value="" name="newvalue"/></td></tr>
<tr><td><input type="submit" value="Update" class="button" onclick="alert('DATA UPDATED SUCESSFULLY')"></td></tr>
</table>
</form>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<%
String empno=request.getParameter("empno");
// String columnname=request.getParameter("columnname");
   String dno=request.getParameter("dno");
   String newvalue=request.getParameter("newvalue");
   String opt=request.getParameter("select1");
  
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
if("1".equals(opt))
{
String cname="dno";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("2".equals(opt))
{
String cname="ano";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("3".equals(opt))
{
String cname="empno";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("4".equals(opt))
{
String cname="date_of_assign";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("5".equals(opt))
{
String cname="deadline";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+" and dno='"+dno+"''";
stmt.executeUpdate(qu);
}
else if("6".equals(opt))
{
String cname="task_name";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("7".equals(opt))
{
String cname="description";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("8".equals(opt))
{
String cname="task_assignee";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("9".equals(opt))
{
String cname="number_of_assignee";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("10".equals(opt))
{
String cname="dname";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("11".equals(opt))
{
String cname="email_id";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("12".equals(opt))
{
String cname="project_name";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("13".equals(opt))
{
String cname="status";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}
else if("14".equals(opt))
{
String cname="module_completed";
String qu="update registration.taskmanager set "+cname+"='"+newvalue+"' where empno='"+empno+"' and dno='"+dno+"'";
stmt.executeUpdate(qu);
}

/*if(b>0)
{
System.out.println("successfully data updated");
}
else
{
System.out.println(" data does not exist");
}
*/
}
catch(Exception ex)
{
out.print("Exception:"+ex);
}
}
%>