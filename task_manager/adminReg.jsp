<%@page import="java.sql.*"%>
<%	String ano=request.getParameter("ano");
		String aname=request.getParameter("aname");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String dname=request.getParameter("dname");
		String dno=request.getParameter("dno");
		String doj=request.getParameter("doj");
	//	int adeptnoInt=Integer.parseInt("adeptno");
	//	int aidno=Integer.parseInt("aid");
%>
<%@include file="adminregister.html" %>
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

String qu="insert into admin (ano,aname,uname,pass,gender,email,dname,dno,doj)values(?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt = con.prepareStatement(qu);
pstmt.setString(1,ano );
pstmt.setString(2,aname );
pstmt.setString(3,uname );
pstmt.setString(4,pass);
pstmt.setString(5,gender);
pstmt.setString(6,email);
pstmt.setString(7,dname);
pstmt.setString(8,dno);
pstmt.setString(9,doj);
pstmt.executeUpdate();
//System.out.println(createQuery);
//stmt.execute(qu);
	

}
catch(Exception ex)
{
		out.print(ex);
}
}
%>
