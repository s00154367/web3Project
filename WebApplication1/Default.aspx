<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <script src="Scripts/JavaScript.js"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- Simple Weather Library -->
    <script src="Scripts/jquery.simpleWeather.min.js"></script>

    <!-- Google Maps API -->
    <script async="async" defer="defer" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAx4IANGM5viwbda9r_tSp2GQxnF_gis64&callback=initMap"></script>

    
     <div class="mainBody">
            <div class="mainHeader">
                <h2 class="text-primary">Favorites</h2>
                <br />
            </div>
            <div>
                <div id="fig1">
                    <figure>
                        <img src="images/countyDonegal.jpg" alt="donegal" class="favorites img-rounded" />
                        <figcaption><a href="BeachDetails.aspx?beachID=0">County Donegal.</a></figcaption>
                    </figure>
                </div>
                <div id="fig2">
                    <figure>
                        <img src="images/CountyWexford.jpg" alt="wexford" class="favorites img-rounded" />
                        <figcaption><a href="BeachDetails.aspx?beachID=1">County Donegal.</a></figcaption>
                    </figure>
                </div>
                <div id="fig3">
                    <figure>
                        <img src="images/ringOfKerry.jpg" alt="kerry" class="favorites img-rounded" />
                        <figcaption><a href="BeachDetails.aspx?beachID=2">County Donegal.</a></figcaption>
                    </figure>
                </div>
            </div>
        </div>

    <div class="row">
        <div class="col-md-4">
            <p class="headingWeather">Weather</p>
            <div id="weather" class="weather2">
            </div>

        </div>
       
       
    </div>

</asp:Content>
