<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resources/css/number.css">
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <title>NUMBER MATCHING</title>
</head>

<body>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>KINDERGARTEN APP</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
        <h2>Match Words with Numbers</h2>
        <p>This is a very popular theme for Kindergarten Children</p>
        <p>Drag and drop the boxes colored green to match their yellow colored counterparts</p>
        <img src="resources/images/pg.png">

    </div>
</div>
<div class="container">
      <div id="context" class="row" class="context">
    <div id="header">
    <p id="title">Start Puzzle</p>
    <input type="image" id="refresh" src="resources/images/reload2.ico" alt="Refresh" width="48" height="48">
     </div>
    <div class="col-md-3" id="number-left">
    
    </div>
    
     <div class="col-md-6" id="ans">
     
     <div id="ans-left" class="col-md-6">
    
     
     </div>
     
      <div id="ans-right" class="col-md-6">
      
     </div>
     
     
    </div>
    
     <div class="col-md-3"   id="number-right">
    
    </div>
    
    </div>
    
    <div id="popup" style ="display:none">
    </div>
    
    
    <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div id="modal-img" class="modal-body">
          <img alt="Congratulations........You have passed the test" src="resources/images/congrats.gif" width="100%" >
        </div>
        
      </div>
      
    </div>
  </div>
    
 <script src="resources/js/number.js" type="text/javascript"></script>

</div>


</body>

</html>
