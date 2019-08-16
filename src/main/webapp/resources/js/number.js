(function(){
"use strict";
 
$(document).ready(function(){
	start();
})

function start(){
	$.ajax("numberList",
			{"type" : "post"})
	.done(success)
	.fail(fail);
	
}

function fail(){
	alert("Error happened");
}

 

function success(data){
	 
	$("#number-left").empty();
	$("#number-right").empty();
	$("#ans-left").empty();
	$("#ans-right").empty();
	
	let count = 0;
	
	  for(let i = 0 ; i< 10 ; i++){
		  
	    	let index = getRandomInt(0,17);
	    	 let val = data[Object.keys(data)[index]].value;
	    	 let num = data[Object.keys(data)[index]].number;
	    	
	    	 let divp2 =$("<div>",{
	 			"class":"empty1",
	 			"id":""+num
	 		}).on("dragover",dragOver)
	 		.on("dragenter",dragEnter)
	 		.on("dragleave",dragLeave)
	 		.on("drop",dragDrop);
	 		
	 		let divins= $("<div>",{
	 			"draggable" : "true",
	 			"class" : "box",
	 			"id":""+num,
	 			"text" : ""+num,
	 			}).on("dragstart", dragStart)
	 			.on("dragend",dragEnd);
	 		
	 		let divp1 =$("<div>",{
	 			"class":"empty"
	 		});
	 		
	 		let span = $("<span>",{
	 			"text":""+val
	 		});
	 		
	         divp1.append(divins);
	         divp2.append(span);
	         
	         if(count < 5){
	     		$("#number-left").append(divp1);	
	     		$("#ans-right").append(divp2);
	     			
	     		}else if(count >=5 && count < 10){
	     			$("#number-right").append(divp1);
	     			$("#ans-left").append(divp2);	 	
	     			
	     		}
	     		count++;
	    	 
	    }
	
	
	
	//$.each(data,function(index,val){
		  
	//});
	
}

//const dragableBox = $(".box");
//const dragReceiver = $(".empty1");
//const dragableBox = dragReceiver.children();


//const dragGiver = $(".empty1");

//console.log(dragableBox.length+" thi is dragableBox");
//console.log(dragReceiver.length+" thi is dragReceiver ");


//let numberList; 

let currentDragable;
let id;
let countDrop=0;

let checkDrop = false;

//dragableBox.on('dragstart',dragStart);
//dragableBox.on('dragend',dragEnd);

//dragReceiver.on('dragover',dragOver);
//dragReceiver.on('dragenter',dragEnter);
//dragReceiver.on('dragleave',dragLeave);
//dragReceiver.on('drop',dragDrop);




function dragStart(){
 checkDrop = false;
 currentDragable = this;	
 this.className +=' hold';
 setTimeout(()=>(this.className='invisible'),0);
 
} 
function dragEnd(){
	if(checkDrop == false){
		 this.className='box';
	}else{
		this.className='box1';
	}
	
}
 

function dragOver(e){
	e.preventDefault(); 
	 
}

function dragEnter(e){
	e.preventDefault();
	checkDrop = true;
    id = $(this).attr("id");
	
	if(id !== $(currentDragable).text()){
		this.className ='danger';
	}else{
		this.className +=' hovered';
	}
	
}

function dragLeave(){
	this.className ='empty1';
}

function dragDrop(){
	 this.className='empty1';
	 if($(this).children().length <= 1 && id == $(currentDragable).text() ){
		 $(currentDragable).css("opacity","0.7");
		 this.append(currentDragable);
		 checkDrop = true;
		 countDrop++;
	 } 
	 
	 if(countDrop == 10){
		 
		 alert("Congraturations .....you have finished this phase");
		 start();
	 }
	 
	
}

function getRandomInt(min, max) {
	  return Math.floor(Math.random() * (max - min + 1)) + min;
	}

 
	
})();


