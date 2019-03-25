
jQuery(document).ready(function () {
        function wow_current(current) {
            var cur = $(current);
            var cur_delay = cur.data('wowDelay');
            var cur_time = cur.data('wowDuration');
            if (cur_time != '') {
                cur.css({
                    '-webkit-animation-duration': cur_time,
                    'animation-duration': cur_time
                });
            }
            if (cur_delay != '') {
                cur.css({
                    '-webkit-animation-delay': cur_delay,
                    'animation-delay': cur_delay
                });
            }
        }

        $('.wow').each(function () {
            wow_current(this);
        });

        $('.section-3').find('.wow').each(function () {
            $(this).addClass('animated');
        });

        $('.section').not('.section-1').find('.wow').each(function () {
            var effect = $(this).data('wowType');
            $(this).removeClass(effect);
        });
// fullpage
        var screen_width = $(window).width();
        if (screen_width > 1024) {
            var Fullpage = new fullpage('#fullPage', {
                anchors: ['page-1', 'page-2', 'page-3', 'page-footer'],
                menu: '#menu',
                easingcss3: 'ease-in-out',
                onLeave: function (index, nextIndex, direction) {
                    var ft = nextIndex["anchor"];
                    if (ft == "page-footer") {
                        $("#scroll-down").css("display", "none");
                    }
                    else {
                        $("#scroll-down").css("display", "");
                    }
                    if (ft == "page-3") {
                        $('.section-3').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).addClass(effect + ' animated');
                        });
                    }
                    else {
                        $('.section-3').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).removeClass(effect + ' animated');
                        });
                    }
                    if (ft == "page-1") {
                        $('.section-1').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).addClass(effect + ' animated');
                        });
                    }
                    else {
                        $('.section-1').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).removeClass(effect + ' animated');
                        });
                    }
                    if (ft == "page-2") {
                        $('.section-2').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).addClass(effect + ' animated');
                        });
                    }
                    else {
                        $('.section-2').find('.wow').each(function () {
                            var effect = $(this).data('wowType');
                            $(this).removeClass(effect + ' animated');
                        });
                    }

                },
            });
        }
    $("#scroll-down").click(function () {
            fullpage_api.moveSectionDown();
        });

// banner-slider-cube
        var swiper = new Swiper('.swiper-container.banner-bg', {
            effect: 'cube',
            grabCursor: true,
            speed: 1300,
            simulateTouch: false,
            followFinger: false,
            shortSwipes: false,
            longSwipes: false,
            cubeEffect: {
                shadow: true,
                slideShadows: true,
                shadowOffset: 20,
                shadowScale: 1,
            },
            pagination: {
                el: '.slider-sub .swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span data-slide="' + (index + 1) + '" class="' + className + '"><span class="number">0' + (index + 1) + '</span>.</span>';
                },
            },
        });
        var swiper2 = new Swiper('.slider-sub', {
            simulateTouch: false,
            speed: 1000,
            followFinger: false,
            shortSwipes: false,
            longSwipes: false,
            pagination: {
                el: '.slider-sub .swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span data-slide="' + (index + 1) + '" class="' + className + '"><span class="number">0' + (index + 1) + '</span>.</span>';
                },
            },
        });

        var swiper3 = new Swiper('.swiper-container.group-slider-program', {
            pagination: {
                el: '.section2-right .swiper-pagination',
                clickable: true,
                renderBullet: function (index, className) {
                    return '<span data-slide="' + (index + 1) + '" class="' + className + '"><span class="number">0' + (index + 1) + '</span>.</span>';
                },
            },
        });


        $(".btn-change-sub").click(function () {
            $(".btn-change-sub").removeClass("active");
            $(this).addClass("active");

        });


        

        function load_text_big(){
            $('.banner-sub-content .title-big').each(function(){
                var text = $(this).html();
                var count = text.split(' ');
                if (count.length >= 2) {
                    $(this).addClass('fs-35');
                }
            })
        }
        load_text_big();

        $('#send-mail').on('ajaxError',function (event, message) {
            alert('Gửi yêu cầu không thành công !');
            $('#send-mail')[0].reset();
        });

        $('#send-mail').on('ajaxSuccess',function (event, message) {
            alert('Gửi yêu cầu thành công !');
            $('#send-mail')[0].reset();
        });

});