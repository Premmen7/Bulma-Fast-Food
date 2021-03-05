<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Assignment2.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-4 extra">
        <h1>Welcome
            <asp:Label ID="Label1" runat="server"></asp:Label></h1>
    </div>
    <br /><br />
    <div class="mb-4 extra">
        <h3>First Name:
        <asp:Label ID="Label2" runat="server"></asp:Label></h3>
    </div>
    <br />
    <div class="mb-4 extra">
        <h3>Last Name:
        <asp:Label ID="Label3" runat="server"></asp:Label></h3>
    </div>
    <br />
    <div class="mb-4 extra">
        <h3>Email:
        <asp:Label ID="Label4" runat="server"></asp:Label></h3>
    </div>
    <br />
    <div class="mb-4 extra">
        <asp:Button ID="recentBtn" Text="Recent Order" class="btn btn-secondary" runat="server" OnClick="recentBtn_Click" />
    </div>
    <br /><br /><br /><br /><br /><br />
    <div class="mb-4 extra">
        <asp:Button ID="logoutBtn" Text="Log Out" class="btn btn-dark" runat="server" OnClick="logoutBtn_Click" />
    </div>
    <br />
    <div class="mb-4 extra">
        <asp:Button ID="deleteBtn" Text="Delete Account" class="btn btn-danger" runat="server" OnClick="deleteBtn_Click" />
    </div>
</asp:Content>
