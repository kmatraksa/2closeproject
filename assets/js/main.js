"use strict";
jQuery(document).ready(function($) {

    //for Preloader
    $(window).load(function() {
        $("#loading").fadeOut(500);
        IsLogin();
    });

    function IsLogin() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php',
            success: function(data) {
                if (data != -1) {
                    var parsed = jQuery.parseJSON(data);
                    var text = '<img class="img-circle left" src="';
                    text += "http://35529791-70-20180117142902.webstarterz.com/project3/" + parsed[0].account_img + '" style="margin-right: 5px;" width="25" height="25"> ';
                    text += " " + parsed[0].account_username;
                    $('#user').append(text);
                    $('#nav-login').hide();
                    $('#nav-logout').show();
                } else {
                    $('#nav-login').show();
                    $('#nav-logout').hide();
                }
            }
        });
    }

    $('#logout').click(function() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php?action=logout',
            success: function(data) {
                IsLogin();
            }
        });
        //this is mandatory other wise your from will be submitted.
        return false;
    });

    $('#logout-seller').click(function() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php?action=logout',
            success: function(data) {
                window.location.replace("http://35529791-70-20180117142902.webstarterz.com/project3/index.html");
            }
        });
        //this is mandatory other wise your from will be submitted.
        return false;
    });

    $('#login').click(function() {
        login();
    });

    function login() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php?action=login',
            data: {
                username: $("#username").val(),
                password: $("#password").val()
            },
            success: function(data) {
                if (data > 0) {
                    window.location.replace("http://35529791-70-20180117142902.webstarterz.com/project3/index.html");
                }
            }
        });
        //this is mandatory other wise your from will be submitted.
        return false;
    }

    $('#signup').click(function() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php?action=signup',
            data: {
                username: $("#username-s").val(),
                email: $("#email-s").val(),
                phone: $("#phone-s").val(),
                location: $("#location-s").val(),
                password: $("#password-s").val()
            },
            success: function(data) {
                if (data === 'OK') {
                    alert("Signup OK");
                }
            }
        });
        //this is mandatory other wise your from will be submitted.
        return false;
    });





    function readURL(input) {

        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $('#blah').attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#blah").click(function() {
        $("#file").click();
    });

    $("#file").change(function() {
        readURL(this);
    });

    /*$('#inputcategory').click(function() {
        $.ajax({
            type: "POST",
            url: 'http://35529791-70-20180117142902.webstarterz.com/project3/assets/service/service.php?action=category',
            contentType: "application/json; charset=utf-8",
            success: function(data)
            {
                callback(JSON.parse(data));
            }
        });
    });*/


    function callback(data) {

        // Get select
        var select = document.getElementById('inputcategory');

        // Add options
        for (var i = 0; i < data.length; i++) {
            $(select).append('<option value=' + i + '>' + data[i] + '</option>');
        }

        // Set selected value
        $(select).val(data[1]);
    }

    /*---------------------------------------------*
     * Mobile menu
     ---------------------------------------------*/
    $('#navbar-menu').find('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var target = $(this.hash);
            target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
            if (target.length) {
                $('html,body').animate({
                    scrollTop: (target.offset().top - 80)
                }, 1000);
                if ($('.navbar-toggle').css('display') != 'none') {
                    $(this).parents('.container').find(".navbar-toggle").trigger("click");
                }
                return false;
            }
        }
    });



    /*---------------------------------------------*
     * WOW
     ---------------------------------------------*/

    var wow = new WOW({
        mobile: false // trigger animations on mobile devices (default is true)
    });
    wow.init();

    // magnificPopup

    $('.popup-img').magnificPopup({
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    $('.video-link').magnificPopup({
        type: 'iframe'
    });



    // slick slider active Home Page Tow
    $(".hello_slid").slick({
        dots: true,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        autoplay: true,
        autoplaySpeed: 2000
    });



    $(".business_items").slick({
        dots: true,
        infinite: false,
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: true,
        prevArrow: "<i class='icon icon-chevron-left nextprevleft'></i>",
        nextArrow: "<i class='icon icon-chevron-right nextprevright'></i>",
        autoplay: true,
        autoplaySpeed: 2000
    });




    //---------------------------------------------
    // Scroll Up 
    //---------------------------------------------

    $('.scrollup').click(function() {
        $("html, body").animate({ scrollTop: 0 }, 1000);
        return false;
    });


    $(':radio').change(function() {
        console.log('New star rating: ' + this.value);
    });
    //End

});