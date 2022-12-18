<%-- 
    Document   : createaccount
    Created on : Jan 20, 2022, 3:18:48 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create account</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="main" style="height: 420px;">
            <h1 id="heading">Create New Account</h1>
            <form action="createaccountcode.jsp" method="post">
                <table style="margin:0px auto;width: 80%;" cellpadding="3">
                    <tr>
                        <td class="txt">Enter name</td>
                        <td><input type="text" name="name"/></td>
                    </tr>
                    <tr>
                        <td class="txt">Select Gender</td>
                       
                        <td>&nbsp;<input type="radio" name="gender" value="male"/>Male
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="radio" name="gender" value="female"/>Female
                        </td>
                    </tr>
                    <tr>
                        <td class="txt">Enter Address</td>
                       <td><textarea name="address" style="resize: none;width:170px;"></textarea></td>
                    </tr>
                    <tr>
                        <td class="txt">Enter Contact no</td>
                        <td><input type="text" name="contactno"/></td>
                    </tr>
                    <tr>
                        <td class="txt">Enter Email Address</td>
                        <td><input type="email" name="emailaddress"/></td>
                    </tr>
                    <tr>
                        <td class="txt">Enter Pan No</td>
                        <td><input type="text" name="panno"/></td>
                    </tr>
                    <tr>
                       <td class="txt">Enter Aadhar No</td>
                        <td><input type="text" name="aadharno"/></td>
                    </tr>
                     <tr>
                       <td class="txt">Enter Balance</td>
                        <td><input type="number" name="balance"/></td>
                    </tr>
                     <tr>
                       <td class="txt">Enter Password</td>
                        <td><input type="password" name="password"/></td>
                    </tr>
                    <tr><td></td><td><input type="submit" value="create" style="background:white;color: #0f5096;height:25px;width:90px;border: 0px;font-weight: bold;border-radius: 5px;font-size:15px;font-family: cambria;"/></td></tr>
                </table>
            </form>
        </div>
    </body>
</html>
