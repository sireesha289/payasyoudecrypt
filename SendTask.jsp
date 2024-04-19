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
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Task subject");
	formObj.t2.focus();
	return false;
	}
	if(formObj.t3.value.length==0)
	{
	alert("Please Enter Cost");
	formObj.t3.focus();
	return false;
	}
	
	
	formObj.actionUpdateData.value="update";
	return true;
	}
	</script>
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
<form name="f1" method="post" action="SendtaskAction.jsp"  onsubmit="return validate(this);"><br/>
   <h2><b>Send Outsourcing Task To Miner</b></h2>
   
	<%
	String res = request.getParameter("res");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size="30" value="<%=t1%>" readonly/></td></tr>

			
			</select>
			</td></tr>

			<tr><td><b>Task</b></td><td><input type="text" name="t2" style="font-family: Comic Sans MS" size="30"/></td></tr>

			<tr><td><b>Currency</b></td><td><input type="text" name="t3" style="font-family: Comic Sans MS" size="30"/></td></tr>
         
			
			<tr><td></td><td><input type="submit" value="Send"></td>
			</table>
				</div>	
					
				</div>
</body>
</html>