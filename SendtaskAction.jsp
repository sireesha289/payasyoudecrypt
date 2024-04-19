<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.action.DBCon" %>
<%
    String t1=request.getParameter("t1");
    String t2=request.getParameter("t2");
    String t3=request.getParameter("t3");
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into task values('"+t1+"','"+t2+"','"+t3+"','Waiting')");
        if(i>0)
        {
           %>
           <script type="text/javascript">
               window.alert("Task Sent To Miner Sucessfully");
               window.location="SendTask.jsp";
               </script>
           <%
        }
        else
        {
         %>
           <script type="text/javascript">
               window.alert("Unable To Send Task to Miner");
               window.location="SendTask.jsp";
               </script>
           <%   
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>