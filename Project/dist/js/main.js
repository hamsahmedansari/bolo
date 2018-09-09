$(document).ready(function () {
    $(".navbar-toggle").click(function () {
        if ($(".nav_po_1").hasClass("nav_rotate_icon_1")) {
            $(".nav_po_1").removeClass("nav_rotate_icon_1");
            $(".nav_po_2").removeClass("nav_rotate_icon_2");
            console.log("1_1");

        } else if (!$(".nav_po_1").hasClass("nav_rotate_icon_1")) {
            $(".nav_po_1").addClass("nav_rotate_icon_1");
            $(".nav_po_2").addClass("nav_rotate_icon_2");
            
            console.log("2");
        }
    });
    $("custom_cpo").click(function(){

        $(this ,"img_pof_hover").addClass("plop");

    });

    var oplopklkl = 3000;
    oplopklkl = ~oplopklkl + 1;
    $(".poli1").click(function(){
        var matched = $("#qe45 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe45').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklkl);
        if (oppliop > oppliop1) {
            $("#qe45").css("margin-left", "0px");
        } else {
            $("#qe45").css("margin-left",  (parseInt(str) - parseInt(adding_width)) + "px");

        }

        


        
    });
       
    $(".poli2").click(function(){
         
            
            var matched = $("#qe45 > .movies_slider90");
            var adding_width = $(".movies_slider90").width();
            var mar_left = $('#qe45').css('margin-left');
            var str = mar_left.substring(0, mar_left.length - 2);
            var oppliop = Math.abs(str);
            var oppliop1 = Math.abs(oplopklkl);
            if (oppliop >= 0) {
                $("#qe45").css("margin-left", "0px");
            } else {
                $("#qe45").css("margin-left", (parseInt(str) + parseInt(adding_width)) + "px");

            }
          
            


        
    });



    var oplopklkl1 = 3000;
    oplopklkl1 = ~oplopklkl1 + 1;

    $(".poli1_1").click(function () {
        var matched = $("#qe46 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe46').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklkl1);
        if (oppliop > oppliop1) {
            $("#qe46").css("margin-left", "0px");
        } else {
            $("#qe46").css("margin-left", (parseInt(str) - parseInt(adding_width)) + "px");

        }





    });

    $(".poli1_2").click(function () {

        var matched = $("#qe46 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe46').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklkl1);
        if (oppliop == 0) {

            $("#qe46").css("margin-left", "0px");
        }
        else if (oppliop >= 0) {
            $("#qe46").css("margin-left", "0px");
        } else {
            $("#qe46").css("margin-left", (parseInt(str) + parseInt(adding_width)) + "px");

        }







    });


    var oplopklkl2 = 3000;
    oplopklkl2 = ~oplopklkl2 + 1;


    $(".poli1_3").click(function () {
        var matched = $("#qe47 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe47').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklkl2);

        if (oppliop > oppliop1) {
            $("#qe47").css("margin-left", "0px");
        } else {
            $("#qe47").css("margin-left", (parseInt(str) - parseInt(adding_width)) + "px");

        }








    });

    $(".poli1_4").click(function () {
        var matched = $("#qe47 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe47').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklkl2);
        if (oppliop == 0) {
            $("#qe47").css("margin-left", "0px");
        }
        if (oppliop > oppliop1) {
            $("#qe47").css("margin-left", "0px");
        } else {
            $("#qe47").css("margin-left", (parseInt(str) + parseInt(adding_width)) + "px");

        }









    });


    var oplopklk3 = 3000;
    oplopklk3 = ~oplopklk3 + 1;
    $(".poli1_5").click(function () {
        var matched = $("#qe48 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe48').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklk3);
        if (oppliop > oppliop1) {
            $("#qe48").css("margin-left", "0px");
        } else {
            $("#qe48").css("margin-left", (parseInt(str) - parseInt(adding_width)) + "px");

        }


    });

    $(".poli1_6").click(function () {


        var matched = $("#qe48 > .movies_slider90");
        var adding_width = $(".movies_slider90").width();
        var mar_left = $('#qe48').css('margin-left');
        var str = mar_left.substring(0, mar_left.length - 2);
        var oppliop = Math.abs(str);
        var oppliop1 = Math.abs(oplopklk3);
        if (oppliop == 0) {
            $("#qe47").css("margin-left", "0px");
        }
        if (oppliop > oppliop1) {
            $("#qe48").css("margin-left", "0px");
        } else {
            $("#qe48").css("margin-left", (parseInt(str) + parseInt(adding_width)) + "px");

        }





    });


    $(".colaps_f_1").slideUp(500);
    $(".colaps_f_2").slideUp(500);
    $(".colaps_f_3").slideUp(500);
    $(".colaps_f_4").slideUp(500);
    $(".colaps_f_5").slideUp(500);
    $(".colaps_f_6").slideUp(500);
    $(".colaps_f_8").slideUp(500);
    $(".colaps_f").slideDown(500);

    $(".colaps_f_p").click(function(){

            if($(".colaps_f").is(':visible')){
                $(".colaps_f").slideUp(500);
            } else {
                $(".colaps_f_1").slideUp(500);
                $(".colaps_f_2").slideUp(500);
                $(".colaps_f_3").slideUp(500);
                $(".colaps_f_4").slideUp(500);
                $(".colaps_f_5").slideUp(500);
                $(".colaps_f_6").slideUp(500);
                $(".colaps_f_8").slideUp(500);
                $(".colaps_f").slideDown(500);
            }

    });
    $(".colaps_f_p_1").click(function(){

        if($(".colaps_f_1").is(':visible')){
            $(".colaps_f_1").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_1").slideDown(500);
        }

    });
    $(".colaps_f_p_2").click(function(){

        if($(".colaps_f_2").is(':visible')){
            $(".colaps_f_2").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_2").slideDown(500);
        }

    });
    $(".colaps_f_p_3").click(function(){

        if($(".colaps_f_3").is(':visible')){
            $(".colaps_f_3").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_3").slideDown(500);
        }

    });
    $(".colaps_f_p_4").click(function(){

        if($(".colaps_f_4").is(':visible')){
            $(".colaps_f_4").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_4").slideDown(500);
        }

    });
    $(".colaps_f_p_5").click(function(){

        if($(".colaps_f_5").is(':visible')){
            $(".colaps_f_5").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_5").slideDown(500);
        }

    });
    $(".colaps_f_p_6").click(function(){

        if($(".colaps_f_6").is(':visible')){
            $(".colaps_f_6").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_8").slideUp(500);
            $(".colaps_f_6").slideDown(500);
        }

    });
    $(".colaps_f_p_8").click(function(){

        if($(".colaps_f_8").is(':visible')){
            $(".colaps_f_8").slideUp(500);
        } else {
            $(".colaps_f").slideUp(500);
            $(".colaps_f_2").slideUp(500);
            $(".colaps_f_3").slideUp(500);
            $(".colaps_f_4").slideUp(500);
            $(".colaps_f_5").slideUp(500);
            $(".colaps_f_6").slideUp(500);
            $(".colaps_f_1").slideUp(500);
            $(".colaps_f_8").slideDown(500);
        }

    });

    $(".change_img_1_9090900").click(function () {

        var change = $(this).attr("src");


        $(".change_img_main_90009000").attr("src", change);
        alert
    });



    var img1 = $('.change_img_1').attr("src");
    var img2 = $('.change_img_2').attr("src");
    var img3 = $('.change_img_3').attr("src");

    $(".change_img_main").attr("src", img1);

    $(".change_img_1").click(function () {

        $(".change_img_main").attr("src", img1);
    });

    $(".change_img_2").click(function () {

        $(".change_img_main").attr("src", img2);
    });
    $(".change_img_3").click(function () {

        $(".change_img_main").attr("src", img3);
    });
    
    $(".close_social").click(function () {

        if ($(".img_9080").hasClass("animated bounceInLeft")) {
            $(".img_9080").removeClass("animated bounceInLeft");
            $(".img_9080").addClass("animated bounceOutLeft");
            $(".close_social").removeClass("social_close_toggle");
            $(".close_social").addClass("social_close_toggle_1");
        } else if ($(".img_9080").hasClass("animated bounceOutLeft")) {
            $(".img_9080").removeClass("animated bounceOutLeft");
            $(".img_9080").addClass("animated bounceInLeft");
            $(".close_social").addClass("social_close_toggle");
            $(".close_social").removeClass("social_close_toggle_1");
        }


    });


    $("#custon_filter_mobile_js_1 p a").click(function () {

        $("#custon_filter_mobile_js_1 p a").removeClass("custon_filter_mobile123_js_1");
        $("#custon_filter_mobile_js_1 p a").addClass("custon_filter_mobile123_js_1");
    });
  

    $(".custom_a_style").click(function () {

        if ($(this).find(".fa").hasClass("fa-check")) {

            $(this).find(".fa").removeClass("fa-check");

        } else  {

            $(this).find(".fa").addClass("fa-check");
        }
    });

    $(".custom_img_90909090909090").click(function () {


        var change2 = $(this).attr("src");
        var change3 = $(this).attr("alt");

        $(".ramdom_img_jobs").attr("src", change2);
        document.getElementById("asdbnasmnd").innerHTML = change3;

    });
    $(".oploiopyuy76u7").mouseenter(function () {

        var img = $(this).attr("src");
        $("#oploplopplopopliop").attr("src", img);
        
    });

    $(".dropdown-submenu").click(function () {
        
        event.stopPropagation();
    });
    $(".position_abs").click(function () {
        $(".position_abs").removeClass("animated fadeIn")
        $(".position_abs").addClass("animated fadeOut");
        setTimeout(function () {

            $(".position_abs").css("display", "none");
        }, 700);
    });

    //12-30-2017
    //start
    $(".custom_hover_for_Real_estate_ind").click(function () {
        var change2 = $(this).find(".custom_img_0980_test").attr("src");
        var change3 = $(this).find(".custom_img_0980_test").attr("alt");
        $(".ramdom_img_jobs").attr("src", change2);
        document.getElementById("asdbnasmnd").innerHTML = change3;

        var Real_estate_bed = $(this).find(".Real_estate_bed").html();
        var Real_estate_bat = $(this).find(".Real_estate_bat").html();
        var Real_estate_Area = $(this).find(".Real_estate_Area").html();
        var Real_estate_Area_unt = $(this).find(".Real_estate_Area_unt").html();
        var Real_estate_dec = $(this).find(".Real_estate_dec").html();
        var Real_estate_cit = $(this).find(".Real_estate_cit").html();
        var Real_estate_pr = $(this).find(".Real_estate_pr").html();
        var Real_estate_loc = $(this).find(".Real_estate_loc").html();


        //$(".set_real_location").html(chan)

        $(".set_real_city").html(Real_estate_cit);
        $(".set_real_Price").html(Real_estate_pr);
        $(".set_real_Bedroom").html(Real_estate_bed);
        $(".set_real_Bathroom").html(Real_estate_bat);
        $(".set_real_Area").html(Real_estate_Area);
        $(".set_real_area_unit").html(Real_estate_Area_unt);
        $(".set_real_dec").html(Real_estate_dec);
        $(".set_real_location").html(Real_estate_loc);
    });
    //End
    //1-2-2018
    var els = document.getElementsByTagName("a");
    for (var i = 0, l = els.length; i < l; i++) {
        var el = els[i];
        if (el.href === 'http://wowslider.com/') {
            el.href = "#";
            el.target = "_self";
        } else if (el.href === 'http://wowslider.net/') {
            el.href = "#";
            el.target = "_self";
        } else {
            //console.log(el.href);
        }
    }
    $(".cutoms_jsfor_header").click(function () {

        var img = $(this).attr("src");
        $(".setting_custom_img").attr("src", img);

    });
});
