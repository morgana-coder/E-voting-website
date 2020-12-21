<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String number=request.getParameter("number");
String question=request.getParameter("question");

try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into FAQ value(?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,email);
	ps.setString(3,number);
	ps.setString(4,question);
	ps.executeUpdate();
	
}
catch(Exception e)
{
System.out.println(e);
}

%>