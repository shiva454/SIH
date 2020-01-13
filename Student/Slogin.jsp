<%@page import="java.sql.*" %>
<%
String name=request.getParameter("NAME");
String pword=request.getParameter("PASSWORD");
%>
<%
   try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=  
	  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","scott","tiger");
  Statement st=con.createStatement();

ResultSet rs=
	st.executeQuery("SELECT * from StudentLogin");
   while(rs.next())
{
String us=rs.getString(1);
String pw=rs.getString(2);
if(us.equals(user) && pw.equals(pword))
{

}
}
con.close();
st.close();
    }

catch(SQLException | ClassNotFoundException e)
	{ out.print("<h2>"+e+"</h2>"); }

out.print("</body>");
%>