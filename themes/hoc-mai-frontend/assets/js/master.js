jQuery(document).ready(function ($) {
    var iOS = /iPad|iPhone|iPod/.test(navigator.userAgent);
    if (iOS) {
        $(document.body).addClass('ios');
    }
    ;
    //input date
    if ($('.input-date').length) {
        var pkcont = 'body';
        if ($('.picker-container').length) {
            pkcont = '.picker-container';
        }
        $('.input-date').datepicker({
            todayHighlight: true,
            startDate: "0d",
            container: pkcont
        });
    }

    //Show/Hide scroll-top on Scroll
    // hide #back-top first
    $("#scroll-top").hide();
    // fade in #back-top
    $(function () {
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('#scroll-top').fadeIn();
            } else {
                $('#scroll-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#scroll-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 1000);
        });
    });
    $('.navbar-toggle').on('click', function (e) {
        $(this).toggleClass('open');
        $('body').toggleClass('menuin');
    });
    $('.nav-overlay').on('click', this, function (e) {
        $('.navbar-toggle').trigger('click');
    });
    $('.dropdown').on('click', '.dropdown-toggle', function (e) {

        var $this = $(this);
        var parent = $this.parent('.dropdown');
        var submenu = parent.find('.sub-menu-wrap');
        parent.toggleClass('open').siblings().removeClass('open');
        e.stopPropagation();

        submenu.click(function (e) {
            e.stopPropagation();
        });


    });
    $('body,html').on('click', function () {

        if ($('.dropdown').hasClass('open')) {

            $('.dropdown').removeClass('open');
        }
    });

    $(".open-search-input").click(function () {
        if ($(".input-search").css("display") == "none") {
            $(".input-search").css("display", "block");
        }
        else {
            $(".input-search").css("display", "none");
        }
    });

    $("#change-language").click(function () {
        if ($(".list-language").css("display") == "none") {
            $(".list-language").css("display", "block");
        }
        else {
            $(".list-language").css("display", "none");
        }
    });
    $(document).click(function () {
        $(".list-language").css("display", "none");
        $(".input-search").css("display", "none");
    });
    $("#change-language").click(function (event) {
        event.stopPropagation();
    });

    $(".open-search-input").click(function (event) {
        event.stopPropagation();
    });
    $(".input-search").click(function (event) {
        event.stopPropagation();
    });
    $('.collapse').on('click', '.collapse-heading', function () {
        var container = $(this).parent('.collapse');
        $(container).siblings().removeClass('on').find('.collapse-body').slideUp();
        $(container).find('.collapse-body').is(':visible') ?
            $(container).removeClass('on').find('.collapse-body').slideUp() :
            $(container).addClass('on').find(':hidden').slideDown();

    });
    stickyHeader();
//    $(window).scrollTop() > $("#header").height() ? $("#header").addClass("sticky") : $("#header").removeClass("sticky");
    $(window).scroll(function () {
//        $(window).scrollTop() > $("#header").height() ? $("#header").addClass("sticky") : $("#header").removeClass("sticky");
        stickyHeader();
    });

    function stickyHeader() {
        var hdOffsetTop = $("#header").offset().top;
        if ($(window).scrollTop() > $("#header").height()) {
            $("#header").addClass("sticky");
            $("main").addClass("stcikymain")
        } else {
            $("#header").removeClass("sticky");
            $("main").removeClass("stcikymain")
        }
    }

    $(".navbar-toggle1").click(function () {
        if ($(".wrap-tool").hasClass("active")) {
            $(".wrap-tool").removeClass("active");
        }
        else {
            $(".wrap-tool").addClass("active");
        }
    });

    if ($('#slider-top').length) {
        $('#slider-top').slick({
            dots: false,
            arrows: false,
            infinite: true,
            speed: 300,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 2000,
            prevArrow: '<span class="slick-prev slick-arrow"><i class="fa fa-angle-left"><i></span>',
            nextArrow: '<span class="slick-next slick-arrow"><i class="fa fa-angle-right"><i></span>',
            responsive: [
                {
                    breakpoint: 480,
                    settings: {
                        arrows: false,
                    }
                }
                // You can unslick at a given breakpoint now by adding:
                // settings: "unslick"
                // instead of a settings object
            ]
        });
    }


});

function SliderVerticle(rq) {
    $(rq).slick({
        infinite: true,
        autoplaySpeed: 0,
        speed: 1000,
        autoplay: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        cssEase: 'linear',
        vertical: true,
        adaptiveHeight: true
    });

    $(rq).mouseover(function () {
        $(this).slick('slickSetOption', {
            speed: 200
        });
    });


    $(rq).mouseout(function () {
        $(this).slick('slickSetOption', {
            speed: 1000
        });
    });


    $(rq).on('wheel', (function (e) {
        e.preventDefault();
        if (e.originalEvent.deltaY < 0) {
            $(this).slick('slickPrev');
        } else {
            $(this).slick('slickNext');
        }
    }));
}