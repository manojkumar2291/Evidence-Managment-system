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
    
   <script>alert('User Registration Success..!')</script>
}  

<%}
if(request.getParameter("m2")!=null){%>

 <script>alert('Login Failed..!')</script>
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
      <li><a href="userhome.jsp">HOME</a></li>
       <li><a href="user_viewp.jsp">View Profile</a></li>  
      <li><a href="user_view.jsp">View Case Details & Send Request</a></li>   
         <li><a class="active" href="user_down.jsp">Download</a></li>   
        
    
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
           <p> Earlier MAKA protocols are designed for singleserver architecture. As Internet users grow
exponentially, the number of cloud servers
rendering different services has also grown
significantly. For the single-server architecture, it
is difficult for users to maintain a variety of
passwords for each server. To improve user
experience, many scholars propose more flexible
MAKA protocols for multi-server environments.
Combined with the unified management features
of the cloud platform, such protocols can be
conveniently applied. users and cloud servers
only need to register in the registration center
(RC) to mutual authentication and key agreement
. </p>
         </div>
          <div class="image"> <a href="#"><img src="css/images/logo.gif" alt="" /></a> </div>
          <div class="cl">&nbsp;</div>
        </li>
     
     
      </ul>
    </div>
      <%
      
      String cname = request.getParameter("cname");
      String cid = request.getParameter("cid");
      
      %>
  </div>
</div>
<div id="main">
  <div class="shell">
    <div id="main-boxes">
       <center><p><font size="5" color="black">Key Verification </font></p><br/></center>
     
    <form action="download1.jsp" method="post">
    <center><table width="281" border="0" >

            <tr><td><font color="black"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Case ID :</td><td><input type="text" name="cid" value="<%=cid%>" readonly required="" /></td></tr>
            <tr><td><font color="black"> Case Name :</td><td><input type="text" value="<%=cname%>" name="cname" readonly required="" /></td></tr>
     <tr><td><font color="black"> Skey:</td><td><input type="text" autocomplete="off" name="skey" required="" /></td></tr>
    
    <td rowspan="2">
    <td><br><input type="submit" name="submit" value="Download" /></td>
   
    </td>
    <tr></tr>      
    </table></center>
    </form>
    <br/>
               
    </div>
    
    
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