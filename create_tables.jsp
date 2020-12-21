<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table registration(name varchar(100),fatherName varchar(100),adharNumber varchar(100),voterNumber varchar(100),pincode bigint,email varchar(500),dob varchar(100),mobileNumber bigint primary key)";
	String q2="create table voter(voterNumber varchar(100),party varchar(100))";
	String q3="create table faq(name varchar(100),email varchar(200),number bigint,question varchar(1000))";
	String q4="create table complaint(name varchar(100),phone bigint,mail varchar(100),radio2 varchar(10),textarea varchar(1000))";
	System.out.println(q1);
	System.out.println(q2);
	System.out.println(q3);
	System.out.println(q4);
	st.execute(q4);
	System.out.println("Table created");
	con.close();
}
catch(Exception e){
	System.out.println(e);
}
%>
