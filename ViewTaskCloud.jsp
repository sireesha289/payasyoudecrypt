<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.action.DBCon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Pay as You Decrypt Decryption Outsourcing for Functional Encryption Using Blockchain</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<div id="wrapper">
	<div id="header">
		<div id="logo">
			<h3><font size="7" color="white">Pay as You Decrypt</font></h3>
		</div>
		<div id="slogan">
			
		</div>
	</div>
	<div id="menu">
		<ul>
			<li class="first current_page_item"><a href="DataOwnerHome.jsp">Home</a></li>
			<li><a href="UploadFile.jsp">Upload File</a></li>
			<li><a href="DOViewFiles.jsp">View Files </a></li>
                        <li><a href="ViewFileRequest.jsp">File Requests</a></li>
                        <li><a href="ViewTaskCloud.jsp">View Task </a></li>
			<li><a href="ViewBChain.jsp">View Block Chain</a></li>
                        <li><a href="index.jsp">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	
        <% String t1=(String)session.getAttribute("t1");%>
	<center>

   <table align="center" border="1" style="margin-bottom: 200px;margin-top: 200px;">
       
   <tr><th><font size="3" color="black">Username From</font></th>
   <th><font size="3" color="black">Task</font></th>
   <th><font size="3" color="black">Currency</font></th>
   <th><font size="3" color="black">Sent File To User</font></th>
  
   

   
   <%  
	       
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from task where status='DATAUSER'");
			while(rs.next()){
                            String status=rs.getString("status");
						%>
						<tr><td><font size="3" color="black"><%=rs.getString(1)%></td>
						
						<td><font size="3" color="black"><%=rs.getString(2)%></td>
						<td><font size="3" color="black"><%=rs.getString(3)%></td>
						
                                                <%
           if(status.equals("DATAUSER")){
               %>
               <td><a href="SentFileToUser.jsp?username=<%=rs.getString(1)%>">Sent File To User</a></td>  
               <%
           }else{
%>
               <td><%=status%></td>   
               <%
}
           
           %>
                                             <%}
				
			
	%>
			</table>
				</div>	
					
				</div>
</body>
</html>