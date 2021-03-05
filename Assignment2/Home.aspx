<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="home">
        <h1 class="text-center"><strong>Welcome To Bulma Fast-Food</strong></h1>
        <div id="carouselExampleSlidesOnly" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Images/food1.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="Images/food2.jpg" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="Images/food3.jpg" class="d-block w-100">
                </div>
            </div>
        </div>
    </body>
</asp:Content>
