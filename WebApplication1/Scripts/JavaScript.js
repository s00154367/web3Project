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
    var mapDiv = document.getElementById('map');
    if(mapDiv != false){
        initMap();}
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
            if (i => locations.length) {
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
        
        var coord = { lat: 54.2766, lng: -8.4761 };
        var map = new google.maps.Map(mapDiv, {
            zoom: 4,
            center: { lat: 54.2766, lng: -8.4761 }
        });
        var marker = new google.maps.Marker({
            position: coord,
            map: map
        });
    }
     



    //https://developers.google.com/maps/documentation/javascript/importing_data
    //for importing data to get all surf spots*/

});


