<%-- 
    Document   : withdraw
    Created on : Jan 22, 2022, 2:21:13 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
if(session.getAttribute("accountno")==null)
{
response.sendRedirect("index.jsp");
}
else
{
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Withdraw Amount</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="main">
        <h1 id="heading">Withdraw Amount</h1>
        <form action="withdrawcode.jsp" method="post">
        <table>
            <tr>
                <td id="txt">Enter Amount</td>
                <td><input type="number" name="amt" required/></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="submit" style="background:white;color: #0f5096;height:25px;width:80px;border: 0px;font-weight: bold;border-radius: 5px;font-size:15px;font-family: cambria;"/>
                </td>
            </tr>
        </table>
        </form>
        </div>
    </body>
</html>
<%
}
%>
