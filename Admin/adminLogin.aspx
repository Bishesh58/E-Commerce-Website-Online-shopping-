<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="e_Commerce.adminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login</title>
    <link href="cssAdmin/login.css" rel="stylesheet"/>
</head>
<body>
    <div class="loginbox">
        <img src="imagesAdmin/img_avatar.png" class="avatar" alt="avatar-img"/>
        <h1>Login</h1>
        <form class="frmLogin" runat="server">

            <p>User email:</p>
            <asp:TextBox ID="txtBxUserEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="erMessage1" runat="server" ControlToValidate="txtBxUserEmail" ErrorMessage="email is required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            
            <p>Password:</p>
            <asp:TextBox ID="txtBxPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="erMessage2" runat="server" ControlToValidate="txtBxPassword" ErrorMessage="password is required" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
            
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            <br/>
            <div class="links">
                <a href="#">Forget password?</a><br/>
                <a href="#">Register</a>
            <br />
                <asp:Label ID="LblMessage" runat="server" ForeColor="Red" Text="*"></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
