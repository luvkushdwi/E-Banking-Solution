<%-- 
    Document   : fundtransfer.jsp
    Created on : Jan 26, 2022, 3:50:56 PM
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
        <title>Fund Transfer</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="main">
            <h1 id="heading">Fund Transfer</h1>
            <form action="fundtransfercode.jsp" method="post">
                <table>
                    <tr>
                    <td class="txt">Enter amount you want to transfer: </td>
                    <td>
                        <input type="number" name="amount" required/>
                    </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                    <td class="txt">Account number to which you want to transfer : </td>
                    <td>
                        <input type="number" name="account_transfer" required/>
                    </td>
                    </tr>
                     <tr>
                <td></td>
                <td>
                    <input type="submit" value="transfer" style="background:white;color: #0f5096;height:25px;width:80px;border: 0px;font-weight: bold;border-radius: 5px;font-size:15px;font-family: cambria;"/>
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