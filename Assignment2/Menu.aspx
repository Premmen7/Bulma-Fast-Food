<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Assignment2.Menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Menu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body class="menu">
        <h1 class="text-center"><strong>Menu</strong></h1>
        <h3 class="text-center mt-5">Breakfast</h3>
        <div class="card-group">
            <div class="card">
                <img src="catalog/ccm.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Chocolate Chip Muffin</h5>
                    <h6>Price: $2.99</h6>
                    <p class="card-text">
                        Calories 442.<br />
                        31% Total Fat 20g.<br />
                        26% Saturated Fat 5.2g.<br />
                        Polyunsaturated Fat 8.2g.<br />
                        Monounsaturated Fat 5.2g.<br />
                        11% Cholesterol 33mg.<br />
                        19% Sodium 460mg.<br />
                        21% Total Carbohydrates 63g.
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/coffee.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Coffee</h5>
                    <h6>Price: $3.29</h6>
                    <p class="card-text">
                        403 calories<br />
                        19 g protein, 63 g carbohydrate<br />
                        8.5 g fat (1 g saturated fat)<br />
                        1 mg cholesterol<br />
                        15.5 g fiber<br />
                        1,824 mg sodium
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/oatmeal.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Oatmeal</h5>
                    <h6>Price: $4.49</h6>
                    <p class="card-text">
                        Calories: 389<br />
                        Water: 8%<br />
                        Protein: 16.9 grams<br />
                        Carbs: 66.3 grams<br />
                        Sugar: 0 grams<br />
                        Fiber: 10.6 grams<br />
                        Fat: 6.9 grams
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/gcs.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Grilled Cheese</h5>
                    <h6>Price: $3.99</h6>
                    <p class="card-text">
                        400 calories<br />
                        19 g fat<br />
                        6 g saturated fat<br />
                        18 g protein<br />
                        39 g carbohydrates<br />
                        6 g fiber<br />
                        6 g sugars<br />
                        520 mg sodium
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/wrap.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Breakfast Wrap</h5>
                    <h6>Price: $3.49</h6>
                    <p class="card-text">
                        Calories 200.0<br />
                        Total Fat 9.0 g<br />
                        Saturated Fat 4.0 g<br />
                        Polyunsaturated Fat	1.0 g<br />
                        Monounsaturated Fat	3.5 g<br />
                        Cholesterol 15.0 mg<br />
                        Sodium 620.0 mg<br />
                        Potassium 0.0 mg<br />
                        Total Carbohydrate 26.0 g<br />
                        Dietary Fiber 15.0 g<br />
                        Sugars 2.0 g<br />
                        Protein 19.0 g
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/mb.jpeg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Breakfast Burger</h5>
                    <h6>Price: $4.99</h6>
                    <p class="card-text">
                        Calories 500<br />
                        Cholesterol 260mg<br />
                        Sodium 730mg<br />
                        Protein 35g<br />
                        Total Fat 27g<br />
                        Carbohydrates 26g
                    </p>
                </div>
            </div>
        </div>


        <h3 class="text-center mt-5">Lunch</h3>
        <div class="card-group">
            <div class="card">
                <img src="catalog/hamburger.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Hamburger</h5>
                    <h6>Price: $2.99</h6>
                    <p class="card-text">
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/pizza.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Traditional Pizza</h5>
                    <h6>Price: $2.99</h6>
                    <p class="card-text">
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/hotdog.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Hot Dog</h5>
                    <h6>Price: $2.99</h6>
                    <p class="card-text">
                    </p>
                </div>
            </div>
            <div class="card">
                <img src="catalog/pogo.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Corn Dog</h5>
                    <h6>Price: $2.99</h6>
                    <p class="card-text">
                    </p>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
