<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
<body>
<%
 String dno=request.getParameter("dno");
   String ano=request.getParameter("ano");
   String empno=request.getParameter("empno");
   String date_of_assign=request.getParameter("date_of_assign");
   String deadline=request.getParameter("deadline");
   String task_name=request.getParameter("task_name");
   String status=request.getParameter("status");
   String description=request.getParameter("description");
   String task_assignee=request.getParameter("task_assignee");
   String number_of_assignee=request.getParameter("number_of_assignee");
   String dname=request.getParameter("dname");
   String email_id=request.getParameter("email_id");
   String project_name=request.getParameter("project_name");
   String module_completed=request.getParameter("module_completed");
 %>
<%@include file="taskmanager.html" %>
<%
out.println("post".equalsIgnoreCase(request.getMethod()));
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
String qu="insert into taskmanager (dno,ano,empno,date_of_assign,deadline,task_name,status,description,task_assignee,number_of_assignee,dname,email_id,project_name,module_completed) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt = con.prepareStatement(qu);
pstmt.setString(1,dno );
pstmt.setString(2,ano );
pstmt.setString(3,empno );
pstmt.setString(4,date_of_assign);
pstmt.setString(5,deadline);
pstmt.setString(6,task_name);
pstmt.setString(7,status);
pstmt.setString(8,description);
pstmt.setString(9,task_assignee);
pstmt.setString(10,number_of_assignee);
pstmt.setString(11,dname);
pstmt.setString(12,email_id);
pstmt.setString(13,project_name);
pstmt.setString(14,module_completed);

pstmt.executeUpdate();

}
catch(Exception ex)
{
		out.print(ex);
}

%>
</table>
<%
}
%>
</body>
</html>
