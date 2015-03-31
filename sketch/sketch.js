// Sketch script file ARJ

size = 16;  // initial grid size
canvasSize = 300;	//size of the container the div's occupy


$(document).ready(function() {
	// Call function to build the canvas
	buildGrid(size);
	// Make the squares on the canvas colour on hover
	// This works but is sudden change not fade in/out
	//	$('.square').mouseenter(function() {
	//		$(this).addClass('drawn');
	//	});
	//	$('.square').mouseleave(function() {
	//		$(this).removeClass('drawn');
	//  });
});


var	buildGrid = function (size) {
	// Create container DIV
	$('body').append("<div id='container' style='height: "+ canvasSize +"px; width: "+ canvasSize +"px;'></div>");

	// Fill canvas with squares
	squareSize = canvasSize/size;
	for (i = 0; i < size*size; i++) {
		$('#container').append("<div class='square' style='height: " + squareSize + "px; width: " + squareSize + "px;'></div>");
	}

};

var resetGrid = function() {
	// Clear grid by removing the container and all it's children
	$('#container').remove();
	// Ask for new size
	var newSize = prompt("How big do you want the grid?");
	// Create a new grid of correect size
	buildGrid(newSize);
};