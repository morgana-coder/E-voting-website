<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table</title>
</head>

<style>
    body {
        padding: 0px;
        margin: 0;
        font-family: Verdana, Geneva, Tahoma, sans-serif;
    }
    
    table {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        border-collapse: collapse;
        width: 800px;
        height: 200px;
        border: 1px solid #bdc3c7;
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
    }
    
    tr {
        transition: all .2s ease-in;
        cursor: pointer;
    }
    
    th,
    td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    
    #header {
        background-color: #16a085;
        color: #fff;
    }
    
    h1 {
        font-weight: 600;
        text-align: center;
        background-color: #16a085;
        color: #fff;
        padding: 10px 0px;
    }
    
    tr:hover {
        background-color: #f5f5f5;
        transform: scale(1.02);
        box-shadow: 2px 2px 12px rgba(0, 0, 0, 0.2), -1px -1px 8px rgba(0, 0, 0, 0.2);
    }
    
    @media only screen and (max-width: 768px) {
        table {
            width: 90%;
        }
    }
</style>

<body>


    <h1>COUNTING MACHINE</h1>
    <hr>

    <table>
        <tr id="header">
            <th>Party's Name</th>
            <th>Abbrevation</th>
            <th>Count</th>
            
        </tr>
        <tr>
            <td>All India Trinamool Congress</td>
            <td>AITC</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='aitc'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            
           </td>
            

        </tr>
        <tr>
            <td>Bahujan Samaj Party </td>
            <td>BSP</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='bsp'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            
            </td>
            

        </tr>
        <tr>
            <td>Bharatiye Janata Party</td>
            <td>BJP</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='bjp'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            </td>
           

        </tr>
        <tr>
            <td>Communist Party of India</td>
            <td>CPI</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='cpi'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            </td>
            

        </tr>
        <tr>
            <td>Communist Party of India(Marxist)</td>
            <td>CPI(M)</td>
            <td><%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='cpim'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%></td>
           

        </tr>
        <tr>
            <td>Indian National Congress</td>
            <td>INC </td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='inc'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%></td>
            

        </tr>
         <tr>
            <td>National's People Party</td>
            <td>NPP</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='npp'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            </td>
            

        </tr>
         <tr>
            <td>Nationalist Congress Party</td>
            <td>NCP</td>
            <td>
            <%try{
              String count="";
            	Connection con=ConnectionProvider.getCon();
            	Statement st=con.createStatement();
            	ResultSet rs=st.executeQuery("select COUNT(party) from voter where party='ncp'");
            	while(rs.next())
            	{
            	  	count=rs.getString(1);
            	  	out.print(count);
            	}
            	}
            catch(Exception e)
            {
            
            }
            	%>
            </td>
         </tr>
        

    </table>
    

</body>

</html>