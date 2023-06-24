<%@page import="java.sql.*" %> 
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Hospital</title>
    </head>
    <body>
        <% 
    int id = Integer.valueOf(request.getParameter("id"));
    String name = request.getParameter("name");
    int number = Integer.valueOf(request.getParameter("number"));
    String address = request.getParameter("address");
    
    try {
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank",  "root", "pwMySQLdb");
        Statement addHosp = con.createStatement();
        addHosp.executeUpdate = ("INSERT INTO MainHopital VALUES ('"+id+"', '"+name+"', '"+number+"', '"+address+"');");
        out.println("You have been added");
        
        addHosp.close();
        con.close();
    }
    catch (Exception e) {
        out.println("Sorry, data couldn't be added. "+ e.getMessage());
    }

    %>
    </body>
</html>
