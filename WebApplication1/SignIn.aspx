<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication1.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <title></title>
   <%--  <!--<link href="StyleSheet.css" rel="stylesheet" />-->--%>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" <%--integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"--%> />

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" <%--integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"--%> />

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" <%--integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"--%>></script>
   

    <style>
        body {
            background: url('images/surf.jpg') no-repeat center center fixed;
            background-size: 100% auto;
        }

        label {
            color: darkorange;
        }

        h1 {
            text-decoration: overline;
            text-decoration: underline;
        }

        h2 {
            color: darkorange;
        }

        .col-centered {
            float: none;
            margin: 0 auto;
        }
    </style>
    <script>
        function username_check() {
            //check the database if the entered username is already there
        }
        function signin() {
            //check username and password . if they match up direct to home page
        }
        function password_check() {
            //check that both passwords are the same and display glyphicon (<p>Ok icon: <span class="glyphicon glyphicon-ok"></span></p>)

            var password1 = document.getElementById("pssPassword");
            var password2 = document.getElementById("pssPassword2");
            var glyph = document.getElementById("confirm");
            var sentence = document.getElementById("confirm1");

            if (password1.text == password2.text) {
                glyph.setAttribute('class', 'glyphicon glyphicon-ok pull-right');
            }
            else {
                glyph.setAttribute('class', 'glyphicon glyphicon-remove pull-right');
                sentence.text('Passwords not the same');
            }

        }
        function signup() {
            //input new user to the database and direct to home page
            var username = document.getElementById("txtUsername");
            var password = document.getElementById("pssPassword");

        }
    </script>




</head>
<body>
    <form id="form1" runat="server">
    <div>
     <div class="text-center container row">
        
            <h2><strong>Sign In</strong></h2>
            <div class="form-group col-lg-4 col-centered">
                <label><strong>Username:</strong></label><input id="txtUser" type="text" class="form-control" placeholder="Username" />
            </div>
            <div class="form-group col-lg-4 col-centered">
                <label><strong>Password:</strong></label><input id="pssPass" type="password" class="form-control" placeholder="Password" />
            </div>
            <div class="form-group col-lg-4 col-centered">
                <input id="btnSubmit" type="submit" value="Submit" class="btn btn-primary" " />
            </div>
        
    </div>
    <h1 class="text-center">or</h1>
    <div class="text-center container row text-center">
        <h2><strong>Sign Up</strong></h2>
        <div class="form-group col-lg-4 col-centered">
            <label><strong>Username:</strong></label><input id="txtUsername" type="text" class="form-control" placeholder="Username"  />
        </div>
        <div class="form-group col-lg-4 col-centered">
            <label><strong>Password:</strong></label><input id="pssPassword" type="password" class="form-control" placeholder="Password" onchange="" />
        </div>
        <div class="form-group col-lg-4 col-centered">
            <label><strong>Re-enter Password:</strong></label><input id="pssPassword2" type="password" class="form-control" placeholder="Re-enter Password"  /><div id="confirm"><p id="confirm1"></p></div>
        </div>
        <div class="form-group col-lg-4 col-centered">
            <input id="btnSubmit1" type="button" value="Submit" class="btn btn-primary" onclick="btnSubmit1_Click"/>
        </div>
    </div>
    </div>
    </form>
</body>
</html>
