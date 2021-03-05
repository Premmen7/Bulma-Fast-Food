<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Assignment2.LogIn" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="login">
        <form>
            <div class="mb-4 extra">
                <h2>Log In</h2>
            </div>
             <div class="mb-4">
                <label for="loginEmail" class="form-label">Email address</label>
                 <asp:TextBox ID="loginEmail" type="email" CssClass="form-control" runat="server" aria-describedby="emailHelp"></asp:TextBox>
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
            </div>
            <div class="mb-4">
                <label for="loginPassword" class="form-label">Password</label>
                <asp:TextBox ID="loginPassword" type="password" CssClass="form-control" runat="server" aria-describedby="passHelp"></asp:TextBox>
                <div id="passHelp" class="form-text">Password must be at least 7 characters long</div>
                <asp:Label ID="errorLabel" runat="server" ForeColor="Red"></asp:Label>
            </div>
            <div class="mb-4 extra">
                <asp:Button ID="loginBtn" type="submit" Text="Log In" class="btn btn-primary" runat="server" OnClick="loginBtn_Click"/>
                <br /><br />
                <a href="Account.aspx">Don't have an account? Register</a>
            </div>
        </form>
    </body>
</asp:Content>
