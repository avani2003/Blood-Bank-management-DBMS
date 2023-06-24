<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>

<html>
    <head> <title> Hospitals </title> </head>
    <body>
<%
try {
  // Load JDBC Driver
  Class.forName("com.mysql.jdbc.Driver").newInstance();
  
  // Create connection with database using Driver
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank",  "root", "pwMySQLdb");

  // Method to help create the MySQL statement to be executed
  Statement stmt=con.createStatement();

  // Result set to get the values
  ResultSet rs = stmt.executeQuery("SELECT name, address FROM Hospitals");
   
  // Display the values %>
  <% while (rs.next()) {
    out.println(rs.getString("name")+"\t"+ rs.getString("address")); %> <br>
  <%}
 rs.close();
  stmt.close(); 
} 
catch (Exception e) {
  out.println("Error: "+ e.getMessage());
} %>
<br>
Want to register your hospital or clinic with us?
<a href="RegisterHospital.html"> Register Now </a>
    </body>
</html>
