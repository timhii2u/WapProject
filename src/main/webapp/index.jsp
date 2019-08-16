<%--
  Created by IntelliJ IDEA.
  User: tim
  Date: 8/14/19
  Time: 12:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>KINDERGARTEN APP</title>
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <link rel="stylesheet" href="resources/css/number.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="resources/js/main.js"></script>
  </head>
  <body>
  <div id="mySidebar" class="sidebar">
    <a class="closebtn"><img src="resources/images/close.png"></a>
    <a href="numberList">SOLVE THE NUMBER PUZZLE</a>
    <a id="shadeBtn" href="shade">LEARN TO COLOR</a>
    <a href="alphabet">LEARN THE ALPHABET</a>
    <a href="numbers">LEARN TO COUNT</a>
    <a href="stars">CHILL WITH THE SPIDERMAN</a>
  </div>
  <div id="main">
    <button class="openbtn"><img src="resources/images/menu.png"> MENU</button>

    <div id="sidebarNote">
      <h2>For Parents</h2>
      <p>Please note that this App will work best if the user has a parent/guardian is around to guide them</p>
      <img src="resources/images/pg.png">

    </div>
   </div>
  <div class="container">

    <h1 id="heading">WELCOME TO OUR KINDERGARTEN APP</h1>

    <img width="900" src="resources/images/welcome.png">

  </div>
  </body>
</html>
