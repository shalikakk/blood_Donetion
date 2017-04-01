<%-- 
    Document   : Sign_Up
    Created on : Apr 1, 2017, 12:25:07 PM
    Author     : shalika
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="myclass.Dbconnector"%>
<%@page import="myclass.Dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                  <%
                String firstname = request.getParameter("firstname");
                String lastname = request.getParameter("lastname");
                String nic = request.getParameter("nic");
                String gender = request.getParameter("gender");
                String height = request.getParameter("height");
                String weight = request.getParameter("weight");
                String birthday = request.getParameter("birthday");
                String mobileno = request.getParameter("mobileno");
                String email = request.getParameter("email");
                String address = request.getParameter("address");
                String district = request.getParameter("address");
                String bloodgroup = request.getParameter("BloodGroup");
                String lastDonetionDate = request.getParameter("lastdonetiondate");
               try {

                    Connection con = new Dbconnector().getConnection();
                    Statement stmt = con.createStatement();
                    
                    String qurey = "INSERT into register(FirstName,LastName,Gender,BirthDay,NicNo,Height,Weight,BloodGroup,Address,District,ContactNo,Email,LastDonationDate,NoOfDonation)VALUES('" + firstname + "','" + lastname + "','" + gender + "','" + birthday + "','" + nic + "','" + height + "','" + weight + "','" + bloodgroup + "','" + address + "')";
                    int a = stmt.executeUpdate(qurey);
                    if (a > 0) {
                        response.sendRedirect("Afterregister.html");
                    }
                } catch (Exception e) {
                    throw new ServletException(e.getMessage());
                }




%>

    </body>
</html>
