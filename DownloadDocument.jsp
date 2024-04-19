<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.action.DBCon"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PHR</title>
</head>
<body>
<%!
byte b[];
%>
<%
String id = request.getParameter("id");
String file = request.getParameter("file");
byte[] filedata = null;
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select data from file where id='"+id+"'");
while(rs.next()){
	filedata = rs.getBytes(1);
}
rs.close();stmt.close();con.close();

response.setHeader("Content-Disposition", "attachment;filename=\"" +file + "\"");
response.setHeader("Content-Type", "application/octet-stream;");
java.io.OutputStream os=response.getOutputStream();
os.write(filedata,0,filedata.length);
os.flush();
os.close();
%>
</body>
</html>
	
	
	