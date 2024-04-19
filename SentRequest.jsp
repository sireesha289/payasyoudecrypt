<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.action.DBCon" %>
<%
    String t1=(String)session.getAttribute("t1");
    String id=request.getParameter("id");
    String username=request.getParameter("username");
    String filename=request.getParameter("filename");
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
       int i=st.executeUpdate("insert into request values('"+t1+"','"+id+"','"+username+"','"+filename+"','Waiting','Waiting')");
       if(i>0)
       {
           %>
           <script type="text/javascript">
               window.alert("File Request Sent Sucessfully");
               window.location="DataUserHome.jsp";
               </script>
           <%
       }
else
{
%>
           <script type="text/javascript">
               window.alert("Unable To send File Request");
               window.location="DataUserHome.jsp";
               </script>
           <%
}
    }
catch(Exception e)
{
out.println(e);
}
%>