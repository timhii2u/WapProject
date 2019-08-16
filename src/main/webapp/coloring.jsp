<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Alphabet</title>


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/main.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="resources/js/main.js"></script>
</head>
<body>
<header>

</header>
<nav>
    <ul>
        <li>NUMBERS</li>
        <li id="shading"><a href="shade">LEARN TO COLOR</a></li>
        <li id="alph"><a href="alphabet">LEARN THE ALPHABET</a></li>
        <li id="num"><a href="numbers">LEARN TO COUNT</a></li>
        <li>DANCING WITH THE STARS</li>
    </ul>

</nav>
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
        <input type="color" id="color-picker">
        <input type="range" id="brush-size" min="1" max="50" value="10">

    </div>

</div>

<footer>

</footer>
</body>
</html>
