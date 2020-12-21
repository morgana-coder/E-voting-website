<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String fatherName=request.getParameter("fatherName");
String adharNumber=request.getParameter("adharNumber");
String voterNumber=request.getParameter("voterNumber");
String pincode=request.getParameter("pincode");
String email=request.getParameter("email");
String dob=request.getParameter("dob");
String mobileNumber=request.getParameter("mobileNumber");
try{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into registration value(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,fatherName);
	ps.setString(3,adharNumber);
	ps.setString(4,voterNumber);
	ps.setString(5,pincode);
	ps.setString(6, email);
	ps.setString(7,dob);
	ps.setString(8,mobileNumber);
	ps.executeUpdate();
	response.sendRedirect("registerationComplete.html");
	
}
catch(Exception e)
{

     System.out.println(e);
}

%>