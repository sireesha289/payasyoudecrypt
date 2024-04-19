<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.action.DBCon" %>
<%
    String t1=request.getParameter("t1");
    String t2=request.getParameter("t2");
    String t3=request.getParameter("t3");
    String t4=request.getParameter("t4");
    String t5=request.getParameter("t5");
    String t6=request.getParameter("t6");
    String t7=request.getParameter("t7");
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into register values('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"')");
        if(i>0)
        {
            response.sendRedirect("Registration.jsp?t1=Register Sucess");
        }
        else
        {
         response.sendRedirect("Registration.jsp?t1=Register Fail");   
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>