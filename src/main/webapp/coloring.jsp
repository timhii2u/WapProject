<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>COLORING</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="resources/js/main.js"></script>

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
        <h2>Lets Color</h2>
        <p>Coloring helps the child learn to grip their pen or pencil</p>
        <p>Hold the mouse down and move it along the canvas to paint. It is possible to change to color and the size of the brush</p>
        <p>You can also undo, clear or create a new canvas</p>
        <p>Save the drawing when the done coloring</p>
        <img src="resources/images/pg.png">

    </div>
</div>
<div class="container">
    <h2>LEARN TO COLOR</h2>

    <c:set var="rand"><%= (java.lang.Math.round(java.lang.Math.random() * 10))+10 %></c:set>
    <canvas id="draw" style="background-image: url('resources/images/${images[rand].sound}.png')" >
    </canvas>

    <div class="color-picker-container" >
        <button id="new-btn">NEW</button>
        <button id="save-btn">SAVE</button>
        <button id="undo-btn">UNDO</button>
        <button id="clear-btn">CLEAR</button>
        <label>Palette</label>

        <input type="color" id="color-picker">
        <input type="range" id="brush-size" min="1" max="50" value="10">

    </div>

</div>

<footer>

</footer>
</body>
</html>
