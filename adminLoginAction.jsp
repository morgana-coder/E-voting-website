
<%
String username=request.getParameter("username");
String password=request.getParameter("password");
try{
if("admin1234".equals(username) && "admin".equals(password))
{
	response.sendRedirect("table.jsp");
	
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>