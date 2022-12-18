<%@page import="java.sql.ResultSet"%>
<%@page import="connect.DbManager"%>
<%
    int accountno=Integer.parseInt(session.getAttribute("accountno").toString());
    int amt=Integer.parseInt(request.getParameter("amt"));
    String query="select balance from account where accountno='"+accountno+"'";
    DbManager db=new DbManager();
    ResultSet rs=db.select(query);
    rs.next();
    int balance=rs.getInt("balance");
    if(balance<amt)
    {
    session.invalidate();
    out.print("<script>alert('Insufficient balance');window.location.href='index.jsp';</script>");
    }
    else
    {
        balance=balance-amt;
        query="update account set balance='"+balance+"' where accountno='"+accountno+"'";
        boolean res=db.insertDeleteUpdate(query);
        session.invalidate();
        if(res==true)
        {
        out.print("<script>alert('Amount is debited');window.location.href='index.jsp';</script>");
        }
        else
        {
        out.print("<script>alert('Amount is not debited');window.location.href='index.jsp';</script>");
        }
    }
%>