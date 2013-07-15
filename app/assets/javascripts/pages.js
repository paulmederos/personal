
$(document).ready(function() {
  $('.main-navigation').click(function() {
  	var opened = $('body').hasClass('menu-opened');
  	if ( opened ) {
  		$('body').removeClass('menu-opened');
  	} else {
  		$('body').addClass('menu-opened');
  	}
	});

  $('.find-me-button').click(function(){
    $(this).addClass('fadeOutUp').fadeOut(500, function(){
      $('.working-on-container').show().addClass('animated bounceInUp');
    });
  });
	
	$(".scroll").click(function(event){
		event.preventDefault();
		//calculate destination place
		var dest = 0;
		if ($(this.hash).offset().top > $(document).height()-$(window).height()){
				dest=$(document).height()-$(window).height();
		} else {
		  dest=$(this.hash).offset().top;
		}
		//go to destination
		$('html,body').animate({scrollTop:dest}, 500, 'easeOutCubic');
	});

  $('.project-showcase').click(function() {
  	var pressed = $(this).hasClass('pressed');
  	if (pressed) {
  		hideTimelineDescription($(this));
  	} else {
  		var description = '#' + $(this).data('description');
	    $(description).slideDown(300, 'swing');
	    $(this).addClass('pressed');
	    event.preventDefault();
  	}	    
  });
});


// Portfolio page
function hideTimelineDescription(toggledButton){
    var description = toggledButton.data('description');
    var descriptionElement = '#' + description;
    $(descriptionElement).slideUp(300, 'swing');
    toggledButton.removeClass('pressed');
    event.preventDefault();
}

// Custom easing methods to extended built-in jQuery ease
$.extend($.easing, {
    easeOutCubic: function (x, t, b, c, d) {
        return c*((t=t/d-1)*t*t + 1) + b;
    }
});