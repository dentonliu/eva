(function($){
		
		$(window).bind('resize',function(){
			 window.location.href = window.location.href;
		});
		
		jQuery.event.add(window, "load", pinblack_resize);

		function pinblack_resize(){
		
			var w = $(window).width();
		
			if( w >= 1300 && w < 1400 ) {
				$(".item").css("width", "190px" );
			} else if( w > 1024 && w <= 1299 ) {
				$(".item").css("width", "212px" );
			} else if ( w > 1460 && w <= 1600 ) {
				$(".item").css("width", "194px" );
			} else if ( w > 1680 && w <= 1900 ) {
				$(".item").css("width", "207px" );
			} else if ( w > 900 && w < 980 ) {
				$(".item").css("width", "190px" );
			} 
			
		}
		 

		var $pinblack_container = $('#boxes');
		$pinblack_container.imagesLoaded(function(){
		  $pinblack_container.masonry({
			itemSelector : '.item',
			isFitWidth: 'true'
		  });
		});
	
})(jQuery); 