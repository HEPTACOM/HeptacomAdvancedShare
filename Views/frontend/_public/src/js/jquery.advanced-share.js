;(function($, window) {
	'use strict';

	$.plugin('heptacomAdvancedShare', {
		init: function() {
			$('.advanced-share--toggle-btn').click(function() {
				$('.advanced-share--outer-wrap').toggleClass('active');
			});
		}
	});

	window.StateManager.addPlugin('.advanced-share--outer-wrap', 'heptacomAdvancedShare');
	
})(jQuery, window);
