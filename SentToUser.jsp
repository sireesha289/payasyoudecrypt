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
        int i=stmt.executeUpdate("update task set status='DATAUSER' where username='"+username+"' and task='"+task+"' and currency='"+currency+"'");
       
        if(i>0)
        {
            %>
           <script type="text/javascript">
               window.alert("Task Sent To Data owners");
               window.location="CloudServerHome.jsp";
               </script>
           <%
        }
else
{
%>
           <script type="text/javascript">
               window.alert("Unable To Sent Task To Data Owners");
               window.location="CloudServerHome.jsp";
               </script>
           <%
}
    }
catch(Exception e)
{
out.println(e);
}
%>
