<%@page import="com.database.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
			<li><a href="SearchFile.jsp">Search File</a></li>
			<li><a href="DUViewFiles.jsp">View Files</a></li>
                        <li><a href="DUViewFileRequest.jsp">View File Request</a></li>
			<li><a href="DUViewFileRequest.jsp">Download File</a></li>
                        <li><a href="index.jsp">Logout</a></li>
                       
              
		</ul>
		<br class="clearfix" />
	</div>
	
        <% String t1=(String)session.getAttribute("t1");%>
	<br/>
	<p align="justify" style="margin-left:300px;"><font size="5" style="font-family: Comic Sans MS">
	View File Content
        
        </p><h2 style="margin-left:300px;"></em></h2>
                                <%
                                String id=request.getParameter("id");
                                if(id!=null){
                                   %>
                                         
                                   <table border="1" style="margin-left:300px;"> 
                                       <tr>
                                           <th>File Data</th>
                                           <th>Cipher Data</th>
                                       </tr>
                                   <%
                                    String sql="select * from file where id='"+id+"'";
                                   ResultSet r=Queries.getExecuteQuery(sql);
                                   while(r.next()){
                                    %>
                                    <tr>
                                        <td><textarea cols="30" rows="10"><%=r.getString("data")%></textarea></td>
                                        <td><textarea cols="30" rows="10"><%=r.getString("cipher")%></textarea></td>
                                    </tr>
                                    
                                    <%
                                   }
                                    
                                   %>
                                  
                                   </table>
                                   <%
                                    
                                }else{
                                %>
                                       
                                <div class="pink-button">
                                   
                                    <table border="1">
                                        <tr>
                                            <th>FileName</th>
                                             <th>Keyword</th>
                                             <th>Token</th>
                                              <th>Date</th>
                                               <th>View File Data</th>
                                        </tr>     
                                       <%
                                       try{
                                       String sql="select * from file where username='"+t1+"'";
                                       ResultSet r=Queries.getExecuteQuery(sql);
                                       while(r.next()){
                                        %>
                                                
                                        <tr>
                                            <td><%=r.getString("filename")%></td>
                                           <td><%=r.getString("fname")%></td>
                                           <td><%=r.getString("token")%></td>
                                            <td><%=r.getString("datetime")%></td>
                                            <td><a href="ViewFileData.jsp?id=<%=r.getString("id")%>" style="color:none;">View File Data</a></td>
                                        </tr>            
                                                
                                       <%}
                                       
                                       }catch(Exception e){
                                           out.println(e);
                                       }
                                       %> 
                                        
                                        
                                    </table>        
                                    
                                    
                                    <%}%>
                                    

</p>
<a href="DUViewFiles.jsp" style="margin-left:300px;">Back</a> 
</body>
</html>