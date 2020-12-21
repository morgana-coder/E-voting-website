<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String mobileNumber=request.getParameter("mobileNumber");
String adharNumber=request.getParameter("adharNumber");
String voterNumber=request.getParameter("voterNumber");

	int z=0;
	try{
		Connection con=ConnectionProvider.getCon();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from registration where mobileNumber='"+mobileNumber+"' and adharNumber='"+adharNumber+"'and voterNumber='"+voterNumber+"'");
		while(rs.next())
		{
			z=1;
			response.sendRedirect("codeOfCoduct.html");
		}
		if(z==0)
		{
			response.sendRedirect("registerationComplete.html");
		}
	}
	catch(Exception e)
	{
				
				System.out.println(e);

	}

%>
