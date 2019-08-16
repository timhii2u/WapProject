<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>NUMBER SOUNDS</title>


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
        <h2>COUNTING</h2>
        <p>Grasping Numerals</p>
        <p>This is creates a foundation for children to learn how to count</p>
        <img src="resources/images/pg.png">

    </div>
</div>

<div class="container">
    <h2>LEARN TO COUNT</h2>
    <div id="numCarousel" class="carousel slide" data-ride="carousel">


        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <c:forEach var="elem" items="${numbersList}">
                <div class="item">
                    <span id="${elem.sound}">${elem.sound}</span>
<%--                    <img src="resources/images/<c:out value='${elem.sound}'/>.png" alt="${elem.sound}" style="width:100%;">--%>
                </div>
            </c:forEach>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#numCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#numCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
        <!-- Sound Buttons-->
        <div class="sound">
            <span>Listen to Audio</span>
            <audio id="soundFile" controls>
                <source id="sourceFile" src="resources/sounds/<c:out value='${numbersList.get(0).sound}'/>.mp3"/>
            </audio>
        </div>

    </div>

    <div id="num-flex-container" class="flex-container">
        <c:forEach var="elem" items="${numbersList}">

            <div id="<c:out value='${numbersList.indexOf(elem)}'/>"><a>${elem.sound}</a> </div>

        </c:forEach>

    </div>

</div>

<footer>

</footer>
</body>
</html>
