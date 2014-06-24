pass<%@ page import="java.sql.*;" %>
<% String uname=request.getParameter("uname");
String pass =request.getParameter("pass");
String opt = request.getParameter("select1");
%>
<%@ include file="login.html" %><%@ include file="index.html" %>
<%
if ("post".equalsIgnoreCase(request.getMethod()))
{
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
final String opt1="Admin";
final String opt2="Employee";
if (opt1.equals(opt))
 {
 String qu="select uname,pass from admin where uname='"+uname+"' and pass='"+pass+"'";
 
//ResultSet code=findstmt.executeQuery();
System.out.println("sucessfully logged in admin database");

ResultSet rs=stmt.executeQuery(qu);
if(rs.next())
{
out.print("Login Success");
response.sendRedirect("taskmanager.jsp");
}
}
 else if(opt2.equals(opt))
{
String qu="select uname,pass from register where uname='"+uname+"' and pass='"+pass+"'";

//ResultSet code=findstmt.executeQuery();
System.out.println("successfully logged in employee database" );

ResultSet rs=stmt.executeQuery(qu);
if(rs.next())
{
response.sendRedirect("employeetask.jsp");
}
}
}
catch(Exception ex)
{
out.print("Exception:"+ex);
}
}
%>
