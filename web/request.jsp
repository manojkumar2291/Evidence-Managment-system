<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@ page session="true" %>
    <%
    String username = session.getAttribute("email").toString();
    String cname = request.getParameter("cname"); 
    String cid = request.getParameter("cid");   
    String skey = "waiting";
  
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?)");

    ps.setString(1,cid);
    ps.setString(2,cname);
    ps.setString(3,username);
  
    ps.setString(4,skey);
    ps.setString(5,skey);
   
   
   
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user_view.jsp?m1=Registered");
    }
    else{
    response.sendRedirect("user_view.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>