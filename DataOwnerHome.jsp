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
	<p align="justify" style="margin-left:250px;"><font size="5" style="font-family: Comic Sans MS">
	welcome <%=t1%></p>
<p align="justify" style="margin:50px;"><font size="3" style="font-family: Times New Roman">The concept of functional encryption (FE) has been introduced to address the shortcomings of public-key encryption (PKE) in many emerging applications which require both data storage and data sharing (e.g., cloud storage service). One of the major issues existing in most FE schemes is the efficiency, as they are built from bilinear pairings of which the computation is very expensive. A widely accepted solution to this problem is outsourcing the heavy workloads to a powerful third party and leaving the user with the light computation. Nevertheless, it is impractical to assume that the third party (e.g., the cloud) will provide free services. To our knowledge, no attention has been paid to the payment procedure between the user and the third party in an FE with outsourced decryption (FEOD) scheme under the assumption that neither of them should be trusted. Leveraging the transactions on cryptocurrencies supported by the blockchain technology, in this paper, we aim to design FE with payable outsourced decryption (FEPOD) schemes. The payment in an FEPOD scheme is achieved through a blockchain-based cryptocurrency, which enables the user to pay a third party when it correctly completes the outsourced decryption. We define the adversarial model for FEPOD schemes, and then present a generic construction of FEPOD schemes. Also, we evaluate the performance of the proposed generic construction by implementing a concrete FEPOD scheme over a blockchain platform. </p>


</p>
</body>
</html>