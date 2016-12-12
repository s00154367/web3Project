<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Favorite.aspx.cs" Inherits="WebApplication1.Favorite" %>

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

</head>
<body>
    <form id="form1" runat="server">
                <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a style="width: 200px; font-size: 28px; color: darkblue;" class="navbar-brand" href="#">Surf Stop</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="Home.aspx">Home</a></li>
                    <li class="active"><a href="#">Favorites</a></li>
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

<div>
  <ul class="nav nav-tabs nav-justified">
    <li class="active"><a data-toggle="tab" href="#strand">Strandhill</a></li>
    <li><a data-toggle="tab" href="#ross">Rosses point</a></li>
    <li><a data-toggle="tab" href="#bundoran">Bundoran</a></li>
    <li><a data-toggle="tab" href="#inch">Inchdoney</a></li>
  </ul>

  <div class="tab-content">
    <div id="strand" class="tab-pane fade in active tabsContentMargin">
        <div class="tabsContentMargin1">
      <h3>Strandhill Co.Sligo</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
    </div>
    <div id="ross" class="tab-pane fade">
        <div class="tabsContentMargin">
      <h3>Rosses Point Co.Sligo</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
    </div>
    <div id="bundoran" class="tab-pane fade">
        <div class="tabsContentMargin">
      <h3>Bundoran Co.Donegal</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
            </div>
    </div>
    <div id="inch" class="tab-pane fade">
        <div class="tabsContentMargin">
      <h3>Inchdoney Co.Cork</h3>
         <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
      </div>
    </div>
  </div>

</div>                
        <div class="menuRight">
            <div class="menuWeather">
                <a>Weather</a>
                <div style="width: 150px; height: 150px; background-color:aquamarine;">
                    <%--d64cf9c8d8148b916b91265063c9005b--%>

                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="menuWeather">
                <a>Best Locations</a>
                <div style="width: 150px; height: 150px; background-color:aquamarine;">
                </div>
            </div>
        </div>
    </form>
</body>
</html>
