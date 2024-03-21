<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        * {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;
        margin-right: 4px;
    }

/* Slideshow container */
.slideshow-container {
  max-width: 1350px;
  max-height: 900px;
  position: relative;
  margin: auto;
  border: medium groove #FFFFFF;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
        .img
        {
           
            border-color:aqua;
            border-style:groove;
            border-width:1px;
            
            
        }
        .img:hover
        {
            height:380px;
            width:380px;
            border-color:red;
            border-style:groove;
             border-width:4px;
        }





        .style11
        {
            width: 499px;
        }
        .style12
        {
            width: 329px;
        }
        .style13
        {
            font-size: large;
        }
        .style14
        {
            font-family: Georgia;
        }
        .style15
        {
            font-size: x-large;
            font-family: Georgia;
        }
        .auto-style1 {
            width: 99%;
            height: 481px;
        }
        .auto-style2 {
            height: 605px;
            width: 1265px;
        }
        .auto-style3 {
            font-size: large;
            width: 481px;
        }
        .auto-style4 {
            width: 607px;
        }
        .auto-style5 {
            height: 604px;
            width: 1273px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">   
<div  style=" height:1200px;  background-image: url('images/bg1.jpg');">
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div style=" border: thick groove #800000; background-color:#FFFFFF; margin-left: 200px;" 
        align="left" class="auto-style5">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <h3 class="section-head font_3 color_b" 
                    style="box-sizing: border-box; margin: 0px; padding: 0px 30px 30px; font-family: font_3 !important; font-weight: normal; font-style: normal; color: rgb(0, 70, 102) !important; text-rendering: optimizelegibility; line-height: 1; font-size: 1.2rem; letter-spacing: 1px; text-align: center; text-transform: uppercase; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    &nbsp;</h3>
                <h3 class="section-head font_3 color_b" 
                    style="box-sizing: border-box; margin: 0px; padding: 0px 30px 30px; font-family: font_3 !important; font-weight: normal; font-style: normal; color: rgb(0, 70, 102) !important; text-rendering: optimizelegibility; line-height: 1; font-size: 1.2rem; letter-spacing: 1px; text-align: center; text-transform: uppercase; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <span class="style9" style="font-family: Georgia"><strong>WELCOME&nbsp;</strong></span><strong><br 
                        class="style15" style="box-sizing: border-box;" />
                    </strong>
                    <span class="style15"><strong>TO SAFA FOOD </strong> </span>
                </h3>
                <p class="auto-style3" 
                    style="box-sizing: border-box; margin: auto auto 50px; padding: 0px; font-family: font_2; font-weight: 400; line-height: 1.6; text-rendering: optimizelegibility; color: rgb(0, 70, 102); letter-spacing: 0px; text-align: center; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;">
                    <span class="style14"><strong>At Safa Foods, we love to eat. Our passion is good food, 
                    you could eat just to survive, but we eat for pleasure! If you are cruising our 
                    site, you must have the same passion also, so welcome friend. We are not the 
                    fanciest bakery plus restaurant around, but we are not all about only looks, we 
                    promise every product will not disappoint once you have tried it, fresh, 
                    delicious and delivered right to your door! We make food for every day 
                    enjoyment, your bread and butter as it were, and maybe a little dessert too!</strong></span><strong><br 
                        class="style14" style="box-sizing: border-box;" />
                    </strong>
                    <span class="style14"><strong>We can also help you organize goodies or a cake for your 
                    special occasion or a party, just give us a call.</strong></span><strong><br class="style14" 
                        style="box-sizing: border-box;" />
                    </strong>
                    <span class="style14"><strong>We look forward to serving you soon!</strong></span></p>
            </td>
            <td class="style12">
                <asp:ImageButton ID="ImageButton6" runat="server" BorderColor="Black" 
                    BorderStyle="Groove" BorderWidth="5px" Height="422px" 
                    ImageUrl="~/images/safa2.jpg" Width="305px" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton7" runat="server" BorderColor="Black" 
                    BorderStyle="Groove" BorderWidth="5px" Height="418px" 
                    ImageUrl="~/images/safa1.jpg" Width="281px" />
            </td>
        </tr>
    </table>
    <br />
    <br />
     <div style="border: medium groove #FFFFFF; background-color:white";>
        <html>
        <body>
<br>
<div class="slideshow-container">

<div class="mySlides fade">
  
  <img src="images/f1.jpg" style="width:100%">
 
</div>

<div class="mySlides fade">
  
  <img src="images/f2.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
 
  <img src="images/f3.jpg" style="width:100%">
 
</div>
<div class="mySlides fade">
 
  <img src="images/S1.jpg" style="width:100%">
 
</div>
<div class="mySlides fade">
 
  <img src="images/s2.jpg" style="width:100%">
 
</div>
<div class="mySlides fade">
 
  <img src="images/s4.jpg" style="width:100%">
 
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
</script>

</body>
</html>
</div>
</asp:Content>

