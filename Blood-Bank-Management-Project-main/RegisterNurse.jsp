<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Nurse</title>
    </head>
    <body>
        <%
            String name = request.getParameter("Nursename");
            String Nurse_id = request.getParameter("Nurse_id");
            int HospID = Integer.valueOf(request.getParameter("HospID"));
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","pwMySQLdb");
            
            try {
            CallableStatement addNurse = con.prepareCall("{call Add_nurse(?,?,?)}");
            addNurse.setString(1,Nurse_id); addNurse.setString(2,name);
            addNurse.setInt(3,HospID);
            addNurse.execute();
            out.println("Nurse added");
    }
            catch (Exception e) {
                out.println(e.getMessage());
            }
%>
    </body>
</html>
