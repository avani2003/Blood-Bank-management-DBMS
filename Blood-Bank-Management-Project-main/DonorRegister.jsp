<%@page import="java.sql.*" %> <%@page import="java.text.*" %>
<%@page import="java.io.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Donor</title>
    </head>
    <body>
        <%
            String First_Name = request.getParameter("First_Name");
            String Last_Name = request.getParameter("Last_Name");
            String BG = request.getParameter("BG");
            String medical_report = request.getParameter("medical_report");
            long Contact_Number = Long.valueOf(request.getParameter("Contact_Number"));
            String email_id = request.getParameter("email_id");
            String city = request.getParameter("City");
            
            SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            java.util.Date date = format.parse(request.getParameter("DOB"));
            java.sql.Date sqlDate = new java.sql.Date(date.getTime());
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root","pwMySQLdb");
            
            CallableStatement addDonor = con.prepareCall("{?=call insert_new_donor(?,?,?,?,?,?,?,?)}");
            addDonor.registerOutParameter(1,Types.VARCHAR);
            addDonor.setString(2,First_Name);  addDonor.setString(3,Last_Name);
            addDonor.setDate(4,sqlDate); addDonor.setString(5,BG);
            addDonor.setString(6,medical_report); addDonor.setLong(7,Contact_Number);
            addDonor.setString(8,email_id); addDonor.setString(9,city);
            addDonor.execute();
%>
    </body>
</html>
