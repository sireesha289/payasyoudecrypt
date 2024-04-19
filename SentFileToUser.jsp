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
<% String username=request.getParameter("username");%>
   <table align="center" border="1" style="margin-bottom: 200px;margin-top: 200px;">
       <form name="s" action="Fileresponse.jsp" method="post">
       <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="30" value="<%=t1%>" readonly/></td></tr>

   <tr><td><b>Task From</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="30" value="<%=username%>" readonly/></td></tr>
<tr>    <tr><td><b>Select File</b></td><td>
                <select name="filename">
                    <%  
	       
			Connection con = DBCon.getCon();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from file where username='"+t1+"'");
			while(rs.next()){
                            %>
                            <option value="<%=rs.getString("filename")%>"><%=rs.getString("filename")%></option>
                            <%
                        }%>
                </select>
    </td></tr>
<tr><td></td><td><input type="submit" value="Send" ></td></tr>

			</table>
                            </form>
				</div>	
					
				</div>
</body>
</html>