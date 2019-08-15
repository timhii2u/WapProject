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
        <li>COLORING</li>
        <li id="alph"><a href="alphabet">LEARN THE ALPHABET</a></li>
        <li id="num"><a href="numbers">LEARN COUNTING</a></li>
        <li>DANCING WITH THE STARS</li>
    </ul>

</nav>
<div class="container">
    <h2>LEARN THE ALPHABET</h2>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">

            <c:forEach var="elem" items="${alphabetList}">
                <li data-target="#myCarousel" data-slide-to="<c:out value='${alphabetList.indexOf(elem)}'/>" ></li>

            </c:forEach>

        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <c:forEach var="elem" items="${alphabetList}">
                <div class="item">

                    <img src="resources/images/<c:out value='${elem.sound}'/>.png" alt="${elem.sound}" style="width:100%;">
                </div>
            </c:forEach>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
        <!-- Sound Buttons-->
        <div class="sound">
            <span>Listen to Audio</span>
            <audio id="soundFile" controls>
                <source id="sourceFile" src="resources/sounds/<c:out value='${alphabetList.get(0).sound}'/>.mp3"/>
            </audio>
        </div>

    </div>

    <div id="alph-flex-container" class="flex-container">
        <c:forEach var="elem" items="${alphabetList}">

            <div id="<c:out value='${alphabetList.indexOf(elem)}'/>"><a>${elem.sound}</a> </div>

        </c:forEach>

    </div>

</div>

<footer>

</footer>
</body>
</html>
