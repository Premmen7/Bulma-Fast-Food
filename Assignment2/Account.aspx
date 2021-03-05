<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Assignment2.Account" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Account</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="account">
        <form>
            <div class="mb-4 extra">
                <h2>Register</h2>
            </div>
            <div class="mb-4">
                <label for="firstName" class="form-label">First Name</label>
                <asp:TextBox ID="firstName" type="text" CssClass="form-control" runat="server" aria-describedby="firstHelp"></asp:TextBox>
                <div id="firstHelp" class="form-text">Your First Name</div>
            </div>
            <div class="mb-4">
                <label for="lastName" class="form-label">Last Name</label>
                <asp:TextBox ID="lastName" type="text" CssClass="form-control" runat="server" aria-describedby="lastHelp"></asp:TextBox>
                <div id="lastHelp" class="form-text">Your Last Name</div>
            </div>
            <div class="mb-4">
                <label for="registerEmail" class="form-label">Email address</label>
                <asp:TextBox ID="registerEmail" type="email" CssClass="form-control" runat="server" aria-describedby="emailHelp"></asp:TextBox>
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-4">
                <label for="registerPassword1" class="form-label">Password</label>
                <asp:TextBox ID="registerPassword1" type="password" CssClass="form-control" runat="server" aria-describedby="passHelp"></asp:TextBox>
                <div id="passHelp" class="form-text">Password must be at least 7 characters long</div>
            </div>
            <div class="mb-4">
                <label for="registerPassword2" class="form-label">Confirm Password</label>
                <asp:TextBox ID="registerPassword2" type="password" CssClass="form-control" runat="server" aria-describedby="pass2Help"></asp:TextBox>
                <div id="pass2Help" class="form-text">Re-Type Password</div>
                <asp:Label ID="successLabel" runat="server" ForeColor="Green"></asp:Label>
                <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div class="mb-4 extra">
                <asp:Button ID="registerBtn" type="submit" Text="Register" class="btn btn-primary" runat="server" OnClick="registerBtn_Click"/>
                <br /><br />
                <a href="LogIn.aspx">Already have an account? Log In.</a>
            </div>
        </form>
    </body>
</asp:Content>
