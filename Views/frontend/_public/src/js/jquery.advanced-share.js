;(function($, window) {
	'use strict';

	$.plugin('heptacomAdvancedShare', {
		init: function() {
			$('.advanced-share--toggle-btn').click(function(event) {
                event.preventDefault();
				$('.advanced-share--outer-wrap').toggleClass('active');
                $('html, body').animate({scrollTop: 0}, 400);
			});

            $('.csbuttons').cSButtons();
		}
	});

	window.StateManager.addPlugin('.advanced-share--outer-wrap', 'heptacomAdvancedShare');

	$('.js--overlay').appendTo('.advanced-share--inner-wrap');

})(jQuery, window);
