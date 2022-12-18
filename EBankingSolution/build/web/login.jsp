<%-- 
    Document   : login
    Created on : Jan 21, 2022, 2:46:17 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="main" style="padding-left:30px;padding-right:30px;height:395px;width:300px;">
            <h1 class="heading" align="center" style="text-decoration: underline;">Login  Here</h1><br/>
            <form action="logincode.jsp" method="post">
                <b style="font-size:17px;">Enter account no</b><br/>
                <input type="number" name="accountno"style="width:303px;height:23px;"/>
                <br/><br/>
                    <b style="font-size:17px;"> Enter Password</b><br>
                    <input type="password" name="password" style="width:303px;height:23px;"/>
                    <br/><br/>
                    <b style="font-size:17px;"> Select operation</b><br>
                      <select name="operation" style="width:307px;height:30px;">
                        <option value="select">Select the operation</option>
                        <option value="deposit">Deposit Amount</option>
                        <option value="withdraw">Withdraw Amount</option>
                        <option value="transfer">Fund Transfer</option>
                        <option value="enquiry">Balance Enquiry</option>
                    </select>
                    <br/><br/><br/>
                    <input type="submit" value="login" class="mybtn" style="height:30px;"/>
                </table>
            </form>
        </div>
    </body>
</html>
