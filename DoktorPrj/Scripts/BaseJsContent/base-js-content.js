/// <reference path="../jquery-ui-1.12.1.js" />
/// <reference path="../jquery-3.3.1.js" />
"use strict";
$(document).ready(function () {
    _setContent();
    _runBanner();

});
$(window).scroll(function () {
    if ($(window).scrollTop() + $(window).height() == $(document).height()) {
        $(".arrow-2").addClass("change-bg");
    }
    else
        $(".arrow-2").removeClass("change-bg");
});
var _setContent = function () {
    var winH = window.innerHeight;
    $(".base-h-content").css({
        top: winH,

    })
};
var _runBanner = function () {
    var swiper = new Swiper('.home-swiper', {
        effect: 'fade',
        autoplay: {
            delay: 6000,
            disableOnInteraction: false,
        },
        speed: 1000,
        loop: true,
    });
};

