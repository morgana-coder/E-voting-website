<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String voterNumber=request.getParameter("voterNumber");
String party=request.getParameter("party");
int z=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from registration where voterNumber='"+voterNumber+"'");
       while(rs.next()){
		z=1;
	    PreparedStatement ps=con.prepareStatement("insert into voter value(?,?)");
		ps.setString(1,voterNumber);
		ps.setString(2,party);
		ps.executeUpdate();
		response.sendRedirect("thankyou.html");
		session.invalidate();
		
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