;(function ($, window) {
    'use strict';

    $.plugin('heptacomAdvancedShare', {
        url: document.URL,

        init: function () {
            var me = this;

            window.Overlay.prototype.defaults.renderElement = '.advanced-share--inner-wrap';

            $('.advanced-share--toggle-btn').on('click tap', function (event) {
                event.preventDefault();

                $('.advanced-share--outer-wrap').toggleClass('advanced-share--open');
                $('html, body').animate({scrollTop: 0}, 400);
            });

            $('.advanced-share--close-area').on('click tap', function () {
                $('.advanced-share--outer-wrap').removeClass('advanced-share--open');
            });

            $('.csbuttons').cSButtons();
            me.registerWhatsapp();
            me.registerEmail();
        },

        registerWhatsapp: function () {
            var me = this;

            $('.advanced-share--icon-container [data-type="whatsapp"]').on('click tap', function () {
                var shareUrl = 'whatsapp://send?text=' + me.url;
                window.open(shareUrl, '_top');
            });
        },

        registerEmail: function () {
            var me = this;

            $('.advanced-share--icon-container [data-type="email"]').on('click tap', function () {
                var shareUrl = 'mailto:?body=' + me.url;
                window.open(shareUrl, '_top');
            });
        }
    });

    window.StateManager.addPlugin('.advanced-share--outer-wrap', 'heptacomAdvancedShare');

    $.subscribe('plugin/swAjaxVariant/onRequestData', function () {
        window.StateManager.addPlugin('.advanced-share--outer-wrap', 'heptacomAdvancedShare');
    });

})(jQuery, window);
