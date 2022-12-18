<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
int accountno_2=Integer.parseInt(request.getParameter("account_transfer"));
int amount=Integer.parseInt(request.getParameter("amount"));
String query="select balance from account where accountno='"+accountno+"'";
DbManager db=new DbManager();
ResultSet rs=db.select(query);
rs.next();
int balance=rs.getInt("balance");
if(balance<amount)
{
session.invalidate();
out.print("<script>alert('Insufficient balance');window.location.href='index.jsp';</script>");
}
else
{
query="select balance from account where accountno='"+accountno_2+"'";
ResultSet rs1=db.select(query);
rs1.next();
int balance_2=rs1.getInt("balance");
balance_2=balance_2+amount;
query="update account set balance='"+balance_2+"' where accountno='"+accountno_2+"'";
db.insertDeleteUpdate(query);
balance=balance-amount;
query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
boolean res=db.insertDeleteUpdate(query);
if(res==true)
{
out.print("<script>alert('Transferred successfully :)');window.location.href='index.jsp';</script>");
}
}
%>
