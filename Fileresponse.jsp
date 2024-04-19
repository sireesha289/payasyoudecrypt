<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.action.DBCon"%>
<%@page import="java.sql.Connection"%>
<%
   String t1=(String)session.getAttribute("t1");
   String t2=request.getParameter("t2");
   String t3=request.getParameter("t3");
   String filename=request.getParameter("filename");
   String id=null;
   Random r=new Random();
int i=r.nextInt(1000000-40000)+5000;
String key=""+i;
   Connection con = DBCon.getCon();
  Statement stmt = con.createStatement();
  ResultSet rs = stmt.executeQuery("select * from file where username='"+t1+"' and filename='"+filename+"'");
  if(rs.next())
  {
      id=rs.getString("id");
      int j=stmt.executeUpdate("update task set status='"+t1+"' where username='"+t2+"' ");
      int ii=stmt.executeUpdate("insert into request values('"+t2+"','"+id+"','"+t1+"','"+filename+"','Permitted','"+key+"')");
      if((j>0)&&(ii>0))
      {
          %>
          <script type="text/javascript">
         window.alert("Download Permision Successfully");
         window.location="DataOwnerHome.jsp";
         </script>
          <%
      }
else
{
%>
     <script type="text/javascript">
         window.alert("Permission Failed");
         window.location="DataOwnerHome.jsp";
         </script>
     <%
}
  }
			
   %>
