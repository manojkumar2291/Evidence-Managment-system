<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.*"%>
<%@page import="novelefficient.Dbconnection"%>
<%@page import="novelefficient.Mail"%>
<%@ page session="true" %>
    <%
    String email = request.getParameter("email");
    String cname = request.getParameter("cname"); 
    String cid = request.getParameter("cid");
 
   // String date = request.getParameter("uploadeddt"); 
    String key = null;
    
    
    
    try{
   
        
    Connection con=Dbconnection.getConnection();
    
    
    
     String sql = "select * from case_details where cname = '"+cname+"' and cid = '"+cid+"'";
    Statement st1 = con.createStatement();
    ResultSet rs1 = st1.executeQuery(sql);
    if(rs1.next()){
    
     key = rs1.getString("skey");
    
    }
    PreparedStatement ps=con.prepareStatement("update request set skey = '"+key+"',status = 'sent' where username = '"+email+"' and cname = '"+cname+"' and cid = '"+cid+"'");
    System.out.println(ps);
    Mail m = new Mail();
          String msg ="Case Name:"+cname+"\ndecryption key :"+key;
          m.secretMail(msg,cname,email);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("owner_view_rq.jsp?m1=Registered");
    }
    else{
    response.sendRedirect("owner_view_rq.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
        
       out.println(e);
          
    }
    %>