<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String phone=request.getParameter("phone");
String mail=request.getParameter("mail");
String radio2=request.getParameter("radio2");
String textarea=request.getParameter("textarea");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into complaint value(?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,phone);
	ps.setString(3,mail);
	ps.setString(4,radio2);
	ps.setString(5,textarea);
	ps.executeUpdate();
	
}
catch(Exception e)
{
System.out.println(e);
}
