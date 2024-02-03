<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
<%@page import="novelefficient.Mail"%>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    
    try{
       
    Connection con=Dbconnection.getConnection();
   
    
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from admin where username= '"+username+"' and password='"+password+"'");
    if(rs.next())
    {

   
                   
    response.sendRedirect("ownerhome.jsp");
    }
    else 
    {
    response.sendRedirect("owner.jsp?msg1=LoginFail");
    }
    }
    catch(Exception e)
    {
    System.out.println("Error in emplogact"+e.getMessage());
    }
%>