<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.action.DBCon" %>
<%
    String t1=request.getParameter("t1");
    String t2=request.getParameter("t2");
    session.setAttribute("t1", t1);
    
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from register where t1='"+t1+"' and t2='"+t2+"' and t7='DATAUSER'");
        if(rs.next())
        {
           %>
           <script type="text/javascript">
               window.alert("Data User   Login Sucessfully");
               window.location="DataUserHome.jsp";
               </script>
           <%
        }
else
{
%>
           <script type="text/javascript">
               window.alert("Data User  Login Failed");
               window.location="dataUser.jsp";
               </script>
           <%
}
    }
    catch(Exception e)
    {
      out.println(e);  
    }
    %>
        
        
