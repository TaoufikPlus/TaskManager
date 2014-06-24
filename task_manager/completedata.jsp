<html>
<head>
<title>Complete details</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
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
            <li><a href="aboutus.html">About Us</a></li>
            <li><a href="index.html">Log Out</a></li>
            <li><a href="taskmanager.html">BACK</a></li>
           
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
<div id="table" style="position:absolute; top:350px;">
<%@ page import="java.sql.*;" %>
<%
try{
			
Class.forName("com.mysql.jdbc.Driver");
}
catch(ClassNotFoundException ex)
{
out.print(ex);
}
try
{
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registration","root","");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from taskmanager");
%>
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
<tr><th>&nbsp;Department No.</th><th>&nbsp;Admin No.</th><th>&nbsp;Employee No.</th><th>&nbsp;Date of Assign</th><th>&nbsp;Deadline</th><th>&nbsp;Task Name</th><th>&nbsp;Status</th><th>&nbsp;Description</th><th>&nbsp;Task Assignee</th><th>&nbsp;Number of Assignee</th><th>&nbsp;Department Name</th><th>&nbsp;E-mail Id</th><th>&nbsp;Project Name</th><th>&nbsp;Modules Completed</th></tr>
<%while(rs.next())
	{
	%>
	<tr style="background-color:snow">
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

%>
</div>
</body>
</html>