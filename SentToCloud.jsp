<%@page import="com.action.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    String username=request.getParameter("username");
    
    String task=request.getParameter("task");
    
    String currency=request.getParameter("currency");
    try
    {
        Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
        int i=stmt.executeUpdate("update task set status='cloud' where username='"+username+"' and task='"+task+"' and currency='"+currency+"'");
        if(i>0)
        {
            %>
           <script type="text/javascript">
               window.alert("Task Sent To Cloud Server");
               window.location="MinerHome.jsp";
               </script>
           <%
        }
else
{
%>
           <script type="text/javascript">
               window.alert("Unable To Sent Task To Cloud Server");
               window.location="MinerHome.jsp";
               </script>
           <%
}
    }
catch(Exception e)
{
out.println(e);
}
%>
