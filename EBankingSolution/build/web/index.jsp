<%-- 
    Document   : index
    Created on : Jan 20, 2022, 11:18:10 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Banking Solution</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: linear-gradient(#0b5862,#00c1bb);height:547px;">
        <div id="main" style=" box-shadow: 0px 0px 10px black;background: linear-gradient(#414d6b,#1e2c4f);">
            <h1 id="heading">E-Banking Solution</h1>
            <%
                if(session.getAttribute("accountno")!=null)
                { 
            %>
            <p class="txt" style="text-align:center;">Your account number = <%=session.getAttribute("accountno")%>
            </p>
            <%
            session.invalidate();
                }
            %>
            <table cellpadding="5px" style="margin-top:20px;">
                <tr>
                    <td>
                        <button class="mybtn" style="color:#223052;" onclick="window.location.href='createaccount.jsp'">Create New Account</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" style="color:#223052;" onclick="window.location.href='login.jsp'">Deposit Amount</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" style="color:#223052;" onclick="window.location.href='login.jsp'">Withdraw Amount</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" style="color:#223052;" onclick="window.location.href='login.jsp'">Fund Transfer</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="mybtn" style="color:#223052;" onclick="window.location.href='login.jsp'">Balance Enquiry</button>
                    </td>
                </tr>
            </table>
        </div>
    </body>
</html>
