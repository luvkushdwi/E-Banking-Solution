<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
int accountno=Integer.parseInt(request.getParameter("accountno"));
String password=request.getParameter("password");
String operation=request.getParameter("operation");
String query="select password from account where accountno='"+accountno+"'";
DbManager db=new DbManager();
ResultSet rs=db.select(query);
if(rs.next())
{
String respassword=rs.getString("password");
if(password.equals(respassword))
{
    if(operation.equals("deposit"))
    {
    session.setAttribute("accountno", accountno+"");
    response.sendRedirect("deposit.jsp");
    }
    else if(operation.equals("withdraw"))
    {
    session.setAttribute("accountno", accountno+"");
    response.sendRedirect("withdraw.jsp");
    }
    else if(operation.equals("transfer"))
    {
    session.setAttribute("accountno",accountno+"");
    response.sendRedirect("fundtransfer.jsp");
    }
    else if(operation.equals("enquiry"))
    {
    query="select balance from account where accountno='"+accountno+"'";
    rs=db.select(query);
    rs.next();
    int balance=rs.getInt("balance");
    out.print("<script>alert('Your balance is : "+balance+"');window.location.href='index.jsp';</script>");
    }
}
else
{
out.print("<script>alert('Invalid user');window.location.href='index.jsp';</script>");
}
}
else
{
out.print("<script>alert('Account does not exist');window.location.href='index.jsp';</script>");
}
%>