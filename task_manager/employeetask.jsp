
<html lang="en">
<head>
<title>Employee Task</title>
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
<%@ page import="java.io.*,java.util.*" %>
<%@ page import="javax.servlet.*,java.text.*" %>
<title>Display Current Date & Time</title>
</head>
<br/>
<body>
<div>
<a href="update_module.jsp">UPDATE STATUS AND MODULES HERE..</a>
<form method="post">
<strong>DeptNo:</strong>
                 <input type="text" class="input" name="dno" style="border:3px solid olive;">
                 <br/>
                <strong>EmpNo:</strong>
                    <input type="text" class="input" name="empno" style="border:3px solid olive;">
                    <br/>
                    <input type="submit" class="button" />
              </form>
            </div>
<div id="date" style="position:absolute; top:200px; left:450px">
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/><h2 align=\"center\">Display Current Date</h2>


<%
   Date dNow = new Date( );
   SimpleDateFormat ft = 
   new SimpleDateFormat ("yyyy-MM-dd");
   out.print( "<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
 
%>
</div>
<div id="table" style="position:absolute; top:350px;">
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>

<%
 String dno=request.getParameter("dno");
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
ResultSet rs=stmt.executeQuery("select * from taskmanager where dno='"+dno+"' and empno='"+empno+"'");
%>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<center><table border='1' cellspacing='2' cellpadding='10'">
<colgroup>
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
    <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
	 <col style="background-color:skyblue">
    <col style="background-color:PaleGoldenRod">
  </colgroup>
<tr><th>&nbsp;Department No.&nbsp;</th><th>&nbsp;Admin No.&nbsp;</th><th>&nbsp;Employee No.&nbsp;</th><th>&nbsp;Date of Assign&nbsp;</th><th>&nbsp;Deadline&nbsp;</th><th>&nbsp;Task Name&nbsp;&nbsp;</th><th>&nbsp;Status&nbsp;&nbsp;</th><th>&nbsp;Description&nbsp;</th><th>&nbsp;Task Assignee&nbsp;</th><th>&nbsp;Number of Assignee&nbsp;</th><th>&nbsp;Department Name&nbsp;</th><th>&nbsp;E-mail Id&nbsp;</th><th>&nbsp;Project Name&nbsp;</th><th>&nbsp;Modules Completed</th></tr>
<%while(rs.next())
	{
	%>
	<tr>
	<td><%=rs.getString("dno")%></td>
	<td><%=rs.getString("ano")%></td>
	<td><%=rs.getString("empno")%></td>
	<td><%=rs.getDate("date_of_assign")%></td>
	<td><%=rs.getDate("deadline")%></td>
	<td><%=rs.getString("task_name")%></td>
		<td><%=rs.getString("status")%></td>
	<td><%=rs.getString("description")%></td>
	<td><%=rs.getString("task_assignee")%></td>
	<td><%=rs.getString("number_of_assignee")%></td>
	<td><%=rs.getString("dname")%></td>
	<td><%=rs.getString("email_id")%></td>
	<td><%=rs.getString("project_name")%></td>
		<td><%=rs.getString("module_completed")%></td>
	</tr>

	<%
		}
	%>

</table>	
</center>
<%
}

catch(Exception ex)
{
out.print("Exception:"+ex);
}
}
%>
</div>
</body>

</html>
