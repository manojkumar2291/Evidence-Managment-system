<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@page import="novelefficient.Mail"%>
<%@ page session="true" %>
    <%
    String filename = request.getParameter("filename");
    String cname = request.getParameter("cname"); 
    String cid = request.getParameter("cid");
 
 
    
    int bb = cname.hashCode();
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    
    
    PreparedStatement ps=con.prepareStatement("update case_details set status = '"+bb+"' where fname = '"+filename+"' and cname = '"+cname+"' and cid = '"+cid+"'");
  
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner_view.jsp?m1=Registered");
    }
    else{
    response.sendRedirect("owner_view.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>