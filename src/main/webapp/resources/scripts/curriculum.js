$(window).load(function(){
	$('#dvLoading').fadeOut(2000);	
});

$(document).ready(function($) {
	var headers = $('#accordion .accordion-header');
	var contentAreas = $('#accordion .ui-accordion-content ').hide();
	var expandLink = $('.accordion-expand-all');
	
	headers.click(function() {
	    var panel = $(this).next();
	    var isOpen = panel.is(':visible');
	
	    // open or close as necessary
	    panel[isOpen? 'slideUp': 'slideDown']()
	        // trigger the correct custom event
	        .trigger(isOpen? 'hide': 'show');
	
	    // stop the link from causing a pagescroll
	    return false;
	    
	    expandLink.click(function(){
	        var isAllOpen = $(this).data('isAllOpen');
	
	        contentAreas[isAllOpen? 'hide': 'show']()
	            .trigger(isAllOpen? 'hide': 'show');
	    });
	});
});