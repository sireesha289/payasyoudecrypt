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
			<li class="first current_page_item"><a href="DataUserHome.jsp">Home</a></li>
                        <li><a href="SendTask.jsp">Send Task</a></li>
			<li><a href="SearchFile.jsp">Search File</a></li>
			<li><a href="DUViewFiles.jsp">View Files</a></li>
                        <li><a href="DUViewFileRequest.jsp">View File Request</a></li>
			<li><a href="DownloadFile.jsp">Download File</a></li>
                        <li><a href="index.jsp">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>	
        <% String t1=(String)session.getAttribute("t1");%>
	<center>

   <table align="center" border="1" style="margin-bottom: 200px;margin-top: 200px; ">
       
   <tr><th><font size="3" color="black">Your Name</font></th>
   <th><font size="3" color="black">File ID</font></th>
   <th><font size="3" color="black">File Owner</font></th>
   <th><font size="3" color="black">File Name</font></th>
   <th><font size="3" color="black">Status</font></th>
   <th><font size="3" color="black">File Key</font></th>
   <th><font size="3" color="black">File Key</font></th>

   
   <%  
	       
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from request where t1='"+t1+"' and status='Permitted' ");
			while(rs.next()){
						%>
						<tr><td><font size="3" color="black"><%=rs.getString(1)%></td>
						
						<td><font size="3" color="black"><%=rs.getString(2)%></td>
						<td><font size="3" color="black"><%=rs.getString(3)%></td>
						<td><font size="3" color="black"><%=rs.getString(4)%></td>
						<td><font size="3" color="black"><%=rs.getString(5)%></td>
                                                <td><font size="3" color="black"><%=rs.getString(6)%></td>
                                            <td><a href="DownloadDocument.jsp?id=<%=rs.getString(2)%>&file=<%=rs.getString(4)%>"><font size="" color="black">Click Here</a></td>
                                                <%}
				
			
	%>
			</table>
				</div>	
					
				</div>
</body>
</html>