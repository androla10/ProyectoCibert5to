$(function() {

	 var dispositivo = navigator.userAgent.toLowerCase();
      if( dispositivo.search(/iphone|ipod|ipad|android/) < -1 ){
			$('.aside').hover(function() {
					$('.palabra').css('display', 'inline-block');
					$(this).css('width', '180px');
					$('body').css('padding-left', '180px');
				}, function() {
					// vuelve a dejar el <div> como estaba al hacer el "mouseout"
					$('.palabra').css('display', 'none');
					$(this).css('width', '50px');
					$('body').css('padding-left', '50px');
				});
       }
	
});