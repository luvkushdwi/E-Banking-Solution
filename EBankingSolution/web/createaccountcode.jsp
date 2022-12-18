<%@page import="connect.DbManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Random"%>
<%
    String acno="";
    Random r=new Random();
    for(int i=1;i<=6;i++)
    {
        acno=acno+(r.nextInt(9)+1);
    }
    int accountno=Integer.parseInt(acno);
    //out.print("Your account number is : "+accountno);
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String panno=request.getParameter("panno");
    String aadharno=request.getParameter("aadharno");
    int balance=Integer.parseInt(request.getParameter("balance"));
    String password=request.getParameter("password");
    Date dt=new Date();
    SimpleDateFormat df=new SimpleDateFormat("dd/MM/yyyy");
    String openingdate=df.format(dt);
    DbManager db=new DbManager();
    String query="insert into account values('"+accountno+"','"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+panno+"','"+aadharno+"','"+balance+"','"+password+"','"+openingdate+"')";
    boolean res=db.insertDeleteUpdate(query);
    if(res==true)
    {
        session.setAttribute("accountno", accountno+"");
        response.sendRedirect("index.jsp");
    }
    else
     {
       out.print("<script>alert('Account is not created');window.location.href='index.jsp';</script>");
      }
%>