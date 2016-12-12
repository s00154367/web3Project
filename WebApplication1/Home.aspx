<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Style/StyleSheet1.css" />

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

    <script>
        //function gettingJSON() {
        //    $.getJSON("http://api.openweathermap.org/data/2.5/weather?q=Dublin&APPID=d64cf9c8d8148b916b91265063c9005b", function (json) {
        //        document.write(JSON.stringify(json));
        //    });
        //}

        //Weather.getCurrent("Dublin", function (current) {
        //    console.log(
        //      ["currently:", current.temperature(), "and", current.conditions()].join(" ")
        //    );
        //});



        $(document).ready(function () {
            initMap();
            var locations = ["Sligo", "Dublin", "Cork", "Athlone"];
            var chosenLocal = 'Sligo';
            var i = 0;
            changeWeather();
            loop();


            //Loop through locations for weather
            function loop() {
                setInterval(function () {

                    chosenLocal = locations[i];
                    changeWeather();
                    ++i;
                    if (i > locations.length ) {
                        i = 0;
                    }
                }, 6000);
            }

            function changeWeather() {
                //Configuring the Simple Weather API 
                $.simpleWeather({
                    location: chosenLocal,
                    woeid: '',
                    unit: 'C',
                    success: function (weather) {
                        html = '<h2><i class="icon-' + weather.code + '"></i> ' + weather.temp + '&deg;' + weather.units.temp + '</h2>';
                        html += '<ul><li>' + weather.city + ', ' + weather.region + '</li>';
                        html += '<li class="currently">' + weather.currently + '</li>';
                        html += '<li>' + weather.wind.direction + ' ' + weather.wind.speed + ' ' + weather.units.speed + '</li></ul>';

                        $("#weather").html(html);
                    },
                    error: function (error) {
                        $("#weather").html('<p>' + error + '</p>');
                    }
                });
            }



            function initMap() {
                //var uluru = { lat: 54.2766, lng: -8.4761 };
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 4,
                    center: { lat: 54.2766, lng: -8.4761 }
                });
                //var marker = new google.maps.Marker({
                //    position: uluru,
                //    map: map
                //});
            }

            /*// Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };

                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    map.setCenter(pos);
                    var marker = new google.maps.Marker({
                        position: pos,
                        map: map
                    });
                }, function () {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }


            function handleLocationError(browserHasGeolocation, infoWindow, pos) {
                infoWindow.setPosition(pos);
                infoWindow.setContent(browserHasGeolocation ?
                                      'Error: The Geolocation service failed.' :
                                      'Error: Your browser doesn\'t support geolocation.')
            };



            //https://developers.google.com/maps/documentation/javascript/importing_data
            //for importing data to get all surf spots*/

        });



    </script>

</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a style="width: 200px; font-size: 28px; color: darkblue;" class="navbar-brand" href="#">Surf Stop</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li><a href="Favorite.aspx">Favorites</a></li>
                    <li><a href="Info.aspx">Beaches</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Account/Register.aspx"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                    <li><a href="Account/Login.aspx"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                </ul>
                <%--<div class="form-group navbar-form navbar-left" >
        <input type="text" class="form-control" placeholder="Search Beaches"/>
      </div>
      <button type="submit" class="btn btn-success" style="margin-top:8px;">Submit</button>--%>
            </div>
        </nav>
        <div class="menuRight">
            <div class="menuWeather">
                <a>Map</a>
                <div id="map" style="width: 150px; height: 150px; background-color: aquamarine;">
                    <%--d64cf9c8d8148b916b91265063c9005b--%>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="menuWeather">
                <a>Best Locations</a>
                <div style="width: 150px; height: 150px; background-color: aquamarine;">
                </div>
            </div>
        </div>

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
        <div class="mainBody2">
            <div style="margin-top: 30px; margin-left: 120px;">
                <label>Search : </label>
                <input type="text" placeholder="Search Beaches" style="background-color: azure; margin-left: 20px;" />
            </div>
            <br />
        </div>
        <div class="mainBody3">
            <p class="headingWeather">Weather</p>
            <div id="weather" class="weather2">
            </div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
