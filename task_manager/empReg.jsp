<%@page import="java.sql.*"%>
<%	String empno=request.getParameter("empno");
		String ename=request.getParameter("ename");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String doj=request.getParameter("doj");
		String dname=request.getParameter("dname");
		String dno=request.getParameter("dno");
		String hod=request.getParameter("hod");
		String ano=request.getParameter("ano");
	//	int adeptnoInt=Integer.parseInt("adeptno");
	//	int aidno=Integer.parseInt("aid");
%>
<%@include file="empregister.html" %>
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

String qu="insert into register (empno,ename,uname,pass,gender,email,doj,dname,dno,hod,ano)values(?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pstmt = con.prepareStatement(qu);
pstmt.setString(1,empno);
pstmt.setString(2,ename );
pstmt.setString(3,uname );
pstmt.setString(4,pass);
pstmt.setString(5,gender);
pstmt.setString(6,email);
pstmt.setString(7,doj);
pstmt.setString(8,dname);
pstmt.setString(9,dno);
pstmt.setString(10,hod);
pstmt.setString(11,ano);
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
