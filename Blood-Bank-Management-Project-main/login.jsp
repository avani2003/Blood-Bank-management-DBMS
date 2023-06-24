<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
            String username = request.getParameter("Username");
            String password = request.getParameter("Password");
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","pwMySQLdb");
            
            CallableStatement cstmt = con.prepareCall("{?=call login (?,?)}");
            cstmt.registerOutParameter(1,Types.INTEGER);
            cstmt.setString(2,username); cstmt.setString(3,password);
            cstmt.execute();
            out.println(cstmt.getInt(1));
            
            if (cstmt.getInt(1)==0) {
            out.println("Wrong login infornmation"); %> <br>
            <a href = "loginpage.html"> Go back to login </a>
            <% }
            else { 
            out.println("Welcome back:");
            %>
            <br> <a href="Operations.html"> Go to operations </a>
            <% }
        %>
    </body>
</html>
