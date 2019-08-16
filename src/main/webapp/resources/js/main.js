$(function () {
    var timer = null;
    var imagesList;

    $('.sound').on("mousemove", function (evt) {
        evt.preventDefault();
    });

    $(".carousel-inner > div").eq(0).addClass("active");
    $(".carousel-indicators > li").eq(0).addClass("active");


    $('#myCarousel').on('slid.bs.carousel', changeAudio);
    $('#numCarousel').on('slid.bs.carousel', changeNumAudio);

    $('#alph-flex-container > div > a').on('click', function(evt){
        if(timer!=null){
            clearTimeout(timer);
        }
        var id = $(this).parent().attr("id");
        console.log("ID"+id)
        $('#myCarousel').carousel(parseInt(id));
        evt.preventDefault();
        timer = setTimeout(playSound,800);

    });

    $('#num-flex-container > div > a').on('click', function(evt){
        if(timer!=null){
            clearTimeout(timer);
        }
        var id = $(this).parent().attr("id");
        console.log("ID"+id)
        $('#numCarousel').carousel(parseInt(id));
        evt.preventDefault();
        timer = setTimeout(playSound,800);

    });

    function changeAudio() {

        var x = $("#soundFile");
        var sourceUrl = $(".carousel-inner > .active").find("img").attr("alt");
        console.log("source"+sourceUrl);
        $("#sourceFile").attr("src", "resources/sounds/"+sourceUrl+".mp3");
        x[0].pause();
        x[0].load();
    };

    function changeNumAudio() {

        var x = $("#soundFile");
        var sourceUrl = $(".carousel-inner > .active").find("span").attr("id");
        console.log("source"+sourceUrl);
        $("#sourceFile").attr("src", "resources/sounds/"+sourceUrl+".mp3");
        x[0].pause();
        x[0].load();
    };

    function playSound() {
        var x = $("#soundFile");

        x[0].oncanplaythrough = x[0].play();
    };

    /*coloring scripts*/

    $("#draw").on("mouseover", function () {
        $("#draw").css("cursor","crosshair");
    });

    var canvas, ctx, brush = {
                        x: 0,
                        y: 0,
                        color: '#000000',
                        size:10,
                        down: false
                    },
        stroke = [], currentStroke = null;
    
    function redraw() {
        ctx.clearRect(0,0,canvas.width(),canvas.height());
        ctx.lineCap = 'round';
        for(var i=0; i< stroke.length;i++){
            var stk = stroke[i];
            ctx.strokeStyle = stk.color;
            ctx.lineWidth = stk.size;
            ctx.beginPath();
            ctx.moveTo(stk.points[0].x, stk.points[0].y);
            for(var j =0; j<stk.points.length; j++){
                var p = stk.points[j];
                ctx.lineTo(p.x,p.y);
            }

            ctx.stroke();
        }
    }
    
    function init() {
        canvas = $("#draw");
        canvas.attr(
            {
                width: 900,
                height: 500
            }
        );
        ctx = canvas[0].getContext('2d');

        function mouseEvent(e){
            brush.x = e.offsetX;
            brush.y = e.offsetY;

            currentStroke.points.push(
                {
                    x: brush.x,
                    y: brush.y
                }
            );

            redraw();
        };
        
        canvas.mousedown(function (e) {
            brush.down = true;

           currentStroke = {
                color: brush.color,
                size: brush.size,
                points: []
            };

            stroke.push(currentStroke);

            mouseEvent(e);

        }).mouseup(function (e) {
            brush.down = false;

            mouseEvent(e);
            currentStroke = null;

        }).mousemove(function (e) {

            if(brush.down){
                mouseEvent(e);
            }

        })


        $('#save-btn').click(function () {
            window.open(canvas[0].toDataURL());
        });

        $('#undo-btn').click(function () {
            stroke.pop();
            redraw();
        });

        $('#clear-btn').click(function () {
            stroke = [];
            redraw();
        });

        $("#color-picker").on("input", function () {
            brush.color= this.value;
            
        });
         $("#brush-size").on("input", function () {
            brush.size= this.value;
        });
    }

    $("#shadeBtn").on("click",function () {
        init();
    });

    function collectImages() {
        $.post("shade")
            .done(function (data) {
                imagesList = data;
                console.log("Json data::"+imagesList[0].sound);
            }).fail();
    };

    $(collectImages);

    $('#new-btn').on("click", function () {
        var rand = Math.floor((Math.random() * 20))
        if(confirm("Load new Image?")){
            canvas.css("background-image","url(\"resources/images/"+imagesList[rand].sound+".png\")");
            $('#clear-btn').click();
        }
    })

    /*NAV BAR STYLES*/

    function openNav() {
        $("#mySidebar").css("width","400px")
        $("#main").css("width","25%")

    }

    function closeNav() {
        $("#mySidebar").css("width","0")
        $("#main").css("marginLeft","0")
    }

    $(".closebtn").click(closeNav);
    $(".openbtn").click(openNav);
})