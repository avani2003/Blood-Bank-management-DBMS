<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Past Camps</title>
    </head>
    <body> <%
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","pwMySQLdb");
        CallableStatement getPastCamps = con.prepareCall("call get_past_camps");
        ResultSet rs = getPastCamps.executeQuery(); %>
        <h1> Past Camps </h1> <br>
        <table border="1", align="center">
            <tr>
                <td> Name</td>
                <td> Start Date</td>
                <td> End Date</td>
                
            </tr>
        <% while (rs.next()) { %>
        <tr>
            <td> <%=rs.getString("name")%></td><!-- comment -->
                <td><%=rs.getString("start_date")%></td><!-- comment -->
                <td><%=rs.getString("end_date")%></td><!-- comment -->          
            </tr>
       <% } %>
       </table>
           <a href="index.html">Click Here to go to Home Page</a>        
       
    </body>
</html>