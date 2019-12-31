<%--
  Created by IntelliJ IDEA.
  User: chadi
  Date: 07.10.2019
  Time: 08:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

    <title>Accueil</title>
    <style>
       body{
           margin: 0;
       }
       #main{
           background-image: url("../ressources/bg.jpg");
           background-size: cover;
           width: 100%;
           height: 100%;
           padding: 20px;
       }
       #menuBar{
           width: 100%;
           height: 50px;
           background-color: aliceblue;
           padding: 0;
           margin: 0;
       }
        h1{
            font-size:58px;
            /*background: linear-gradient(90deg,#fce3ec,#ffe8cc);*/
        }
        #desc{
            width: 550px;
            background-color: aliceblue;
            opacity: 80%;
            padding: 15px;
            font-size: 20px;
            margin-left: 2em;
        }
       #productsCont{
           background-color: aliceblue;
           max-width: 60%;
           padding: 10px;
       }
       .product{
           background-size: cover;
           padding: 20px;
           height: 220px;
           width: 250px;
           display: inline-block;
           margin-right: 11px;
       }
        .prodTitle{
            background: linear-gradient(90deg,#fce3ec,#ffe8cc);
            font-weight: bold;
            opacity: 80%;
            display: inline;
            position: relative;
        }
        .cartProduit{
            height: 40px;
            width: 40px;
            vertical-align: middle;
        }
        .priceTag{
            text-align: center;
            justify-self: center;

            margin : auto;
            background: linear-gradient(90deg,#fce3ec,#ffe8cc);
            opacity: 80%;
            font-weight: bold;
            font-size: 25px;
            width: 75%;
            position:relative;
            top : 70%;
        }
    </style>
</head>
<body>
    <div id="menuBar">

    </div>
    <div id="main">
        <h1>Welcome to e-shop!</h1>
        <p id="desc">
            Contrary to popular belief, Lorem Ipsum is not simply random text.
            It has roots in a piece of classical Latin literature from 45 BC,
            making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,
            looked up one of the more obscure Latin words, consectetur,
            from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.
            Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"
            (The Extremes of Good and Evil) by Cicero, written in 45 BC.
            This book is a treatise on the theory of ethics, very popular during the Renaissance.
            The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
        </p>
        <div id="productsCont">
            <div class="product" style="background-image: url('../ressources/product.jpg')">
                <h2 class="prodTitle">Fit Cat</h2>
                <div class="priceTag">CHF 999.-<input class="cartProduit" type="image" src="../ressources/cart.jpg" /></div>
            </div>
            <div class="product" style="background-image: url('../ressources/djcat.jpg')">
                <h2 class="prodTitle">DJ Cat</h2>
                <div class="priceTag">CHF 42.-<input class="cartProduit" type="image" src="../ressources/cart.jpg" /></div>
            </div>
            <div class="product" style="background-image: url('../ressources/product2.jpg')">
                <h2 class="prodTitle">Cat Cat</h2>
                <div class="priceTag">CHF 3.-<input class="cartProduit" type="image" src="../ressources/cart.jpg" /></div>
            </div>
        </div>
    </div>
    <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>
