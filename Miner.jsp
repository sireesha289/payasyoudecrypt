<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="description" content="" />
<meta name="keywords" content="" />
<title>Pay as You Decrypt Decryption Outsourcing for Functional Encryption Using Blockchain</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
    table
    {
        margin-left: 0px;
    }
</style>
<script language="javascript">
	function validate(formObj)
	{
	if(formObj.t1.value.length==0)
	{
	alert("Please Enter Username");
	formObj.t1.focus();
	return false;
	}
	if(formObj.t2.value.length==0)
	{
	alert("Please Enter Password");
	formObj.t2.focus();
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
			<li class="first current_page_item"><a href="index.jsp">Home</a></li>
			<li><a href="Dataowner.jsp">Data Owner</a></li>
			<li><a href="dataUser.jsp">Data User</a></li>
                        <li><a href="CloudServer.jsp">Cloud Server</a></li>
			<li><a href="Miner.jsp">Miner</a></li>
                        <li><a href="Registration.jsp">Registration</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	<br/>
	

<center>
<form name="f1" method="post" action="MinerLogin.jsp" onsubmit="return validate(this);"><br/>
   <h2><b>Miner Login Screen</b></h2>
   
	<%
	String res = request.getParameter("t1");
	if(res != null){
		out.println("<center><font face=verdana color=red>"+res+"</center></font>");
	}%>
						
						<table align="center" width="40" style="margin-bottm:50px;" >
			 <tr><td><b>Username</b></td><td><input type="text" name="t1" style="font-family: Comic Sans MS" size=30/></td></tr>
         
		  <tr><td><b>Password</b></td><td><input type="password" name="t2" style="font-family: Comic Sans MS" size=30/></td></tr>
         
			<tr><td><input type="Reset"></td><td><input type="submit" value="Login">
                                    
			</td>
                            <td></td>
			</table>


</p>
</p>
</body>
</html>