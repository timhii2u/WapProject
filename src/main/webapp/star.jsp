<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SPIDERWEB</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">

</head>
<body>
<header>

</header>
<div id="mySidebar" class="sidebar">
    <a class="closebtn"><img src="resources/images/close.png"></a>
    <a href="app">HOME</a>
    <a href="numberList">SOLVE THE NUMBER PUZZLE</a>
    <a id="shadeBtn" href="shade">LEARN TO COLOR</a>
    <a href="alphabet">LEARN THE ALPHABET</a>
    <a href="numbers">LEARN TO COUNT</a>
    <a href="stars">CHILL WITH THE SPIDERMAN</a>
</div>
<div id="main">
    <button class="openbtn"><img src="resources/images/menu.png"> MENU</button>
    <div id="sidebarNote">
        <a id="closetip"><img src="resources/images/close.png"></a>
        <h1>Explore the Galaxy</h1>
        <p>Move the mouse around or click to create a web</p>
        <p>Press F11 to make full screen --- Could turn into a screen saver</p>
        <img src="resources/images/pg.png">

    </div>
</div>
<section id="particles-js" class="container"></section>
<script src="http://code.jquery.com/jquery-3.4.1.js"></script>
<script src="resources/js/particles.js"></script>
<script src="resources/js/app.js"></script>
<script src="resources/js/main.js"></script>

</body>
</html>