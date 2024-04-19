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
	<br/>
	<p align="justify" style="margin-left:300px;"><font size="5" style="font-family: Comic Sans MS">
	welcome <%=t1%>
        <h2 style="margin-left:300px;">Upload Files Into Cloud</h2>
        </p>
<form action="UploadAction" method="post" enctype="multipart/form-data">
                                        <table align="center" style="margin-left: 300px;margin-bottom: 100px;">
                                            <tr><td>Keyword</td><td><input type="text" name="filename" required="" placeholder="Enter Keyword"></td></tr>
                                     
                                            <tr><td>Filename</td><td><input type="text" name="key" required="" placeholder="Enter Filename"></td></tr>
                                              
                                            <tr><td>Choose File</td><td><input type="file" name="file" required=""></td></tr>
                                            <tr><td><input type="submit" value="Upload" ></td><td><input type="Reset"></input></td></tr>
                                        </table>
                                    </form>

</p>
</body>
</html>