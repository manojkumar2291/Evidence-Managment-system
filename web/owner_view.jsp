<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="novelefficient.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Evidence Protection System Using Blockchain  Technology</title>
<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.jcarousel.js"></script>
<script src="js/cufon-yui.js" type="text/javascript" charset="utf-8"></script>
<script src="js/Chaparral_Pro.font.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="js/jquery-func.js"></script>
<link rel="shortcut icon" type="image/x-icon" href="css/images/favicon.ico" />
</head>
    <%
if(request.getParameter("m1")!=null){%>
    
   <script>alert('Block Chain Generated Sucessfully..!')</script>
}  

<%}
if(request.getParameter("msgg")!=null){%>

 <script>alert('Failed..!')</script>
}
<%
}
%>
<body>
<!-- START PAGE SOURCE -->
<div id="header">
    <br>
  <div class="shell">
    <h1>Evidence Protection System Using Blockchain  Technology</h1>
    <div class="search">
      
    </div>
  </div>
</div>
<div id="navigation">
  <div class="shell">
   <ul>
    <li><a  href="ownerhome.jsp">HOME</a></li>
      <li><a href="owner_upload.jsp">Upload Crime Details</a></li>
      <li><a class="active" href="owner_view.jsp">View Crime Details</a></li>
      <li><a href="owner_view_bc.jsp">View Block Chain Files</a></li>    
      <li><a href="owner_view_rq.jsp">View User's Request</a></li>
       <li><a href="logout.jsp">Logout</a></li>
    </ul>
  </div>
</div>
<div id="featured">
  <div class="shell">
    <div class="slider-carousel">
      <ul>
        <li>
          <div class="info">
           <p> We
provide a new efficient RDPC protocol based on homomorphic
hash function. The new scheme is provably secure against forgery
attack, replace attack and replay attack based on a typical
security model. To support data dynamics, an operation record
table (ORT) is introduced to track operations on file blocks. We
further give a new optimized implementation for the ORT which
makes the cost of accessing ORT nearly constant. Moreover, we
make the comprehensive performance analysis which shows that
our scheme has advantages in computation and communication
costs. Prototype implementation and experiments exhibit that the
scheme is feasible for real applications. </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/1.png" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
        <li>
          <div class="info">
           <p>We
provide a new efficient RDPC protocol based on homomorphic
hash function. The new scheme is provably secure against forgery
attack, replace attack and replay attack based on a typical
security model. To support data dynamics, an operation record
table (ORT) is introduced to track operations on file blocks. We
further give a new optimized implementation for the ORT which
makes the cost of accessing ORT nearly constant. Moreover, we
make the comprehensive performance analysis which shows that
our scheme has advantages in computation and communication
costs. Prototype implementation and experiments exhibit that the
scheme is feasible for real applications.</p>
          </div>
          <div class="image"> <a href="#"><img src="css/images/2.jpg" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
      </ul>
    </div>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       
        
        <p><center><font size="5" color="black">View Case Details</font></center></p><br/>
    <style>
        th{
            color: #50aac3;
        }
         tr{
            color: black;
        }
        
        td{
            text-align: center;
        }
    </style>
     
    
    <% 

try{ 
	Connection con = null;
        con = Dbconnection.getConnection();
        PreparedStatement pst=con.prepareStatement("select * from case_details where status = 'waiting' ");
        ResultSet rs=pst.executeQuery();
        %>
        
        <center>   <table style="width:80%" border="2"></center>
         
        <tr>
        
        <th>File Name</th>
        <th>Case Name</th>
        <th>Case Id</th>
        <th>Location</th>
       <th>Description</th>
        <th>Image</th>
        <th>Assign Block Chain</th>
        
     
     
 </tr>

<%
       
	while(rs.next()){
            %><tr>
                <td><%=rs.getString("fname")%></td>
                <td><%=rs.getString("cname")%></td>
                <td><%=rs.getString("cid")%></td>
                 <td><%=rs.getString("location")%></td>
                <td><textarea><%=rs.getString("description")%></textarea></td>
                <th><img src="Gallery/<%=rs.getString("location")%>"></img></th>
              
       <td><a href="assignbc.jsp?filename=<%=rs.getString("fname")%>&cid=<%=rs.getString("cid")%>&cname=<%=rs.getString("cname")%>"><font color="#0d637d" size="3">click</font></a> </td>
      
         
        </tr>
      <%  }
        
        %> </table>

<% }
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>
        
        <br><br><br>
         <hr>    
        
            
    </div>
    <br>
    
    <div class="cl">&nbsp;</div>
  </div>
</div>
<div class="footer">
  <div class="shell">
    <p class="rf"></a></p>
    <div style="clear:both;"></div>
  </div>
</div>
<script type="text/javascript">pageLoaded();</script>
<!-- END PAGE SOURCE -->
</body>
</html>