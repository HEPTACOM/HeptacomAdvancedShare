;(function($, window) {
	'use strict';

	$.plugin('heptacomAdvancedShare', {
		init: function() {
			$('.advanced-share--toggle-btn').click(function() {
				$('.advanced-share--outer-wrap').toggleClass('active');
                $("html, body").animate({scrollTop: 0}, 300);
			});

            $('.csbuttons').cSButtons();
		}
	});

	window.StateManager.addPlugin('.advanced-share--outer-wrap', 'heptacomAdvancedShare');

})(jQuery, window);
