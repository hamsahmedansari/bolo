////Bol News.....
//$(document).ready(function () {
//    $(".news_icon").click(function () {
//        var alt = $(this).attr("alt");
//        if (alt == "Bol") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/1EEBP23D7Co?autoplay=1");
//            $("#infoImage").attr('src', "../img/BOL_News.png");
//            $("#infoHeading").html("Bol News");
//            $("#infoText").html("This is a good channel...");
//        }
//        //Geo News
//        else if (alt == "Geo") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/adX6VHHzYXI?autoplay=1");
//            $("#infoImage").attr('src', "../img/GEO_News.png");
//            $("#infoHeading").html("Geo News");
//            $("#infoText").html("Geo News Live channel...");
//        }
//        else if (alt == "Sama") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/cnZ1THbsjCI?autoplay=1");
//            $("#infoImage").attr('src', "../img/SAMA_News.png");
//            $("#infoHeading").html("Sama News");
//            $("#infoText").html("Sama News Live channel...");
//        }
//        //92 News
//        else if (alt == "92") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/hA40sAnXauU?autoplay=1");
//            $("#infoImage").attr('src', "../img/92_News.jpg");
//            $("#infoHeading").html("92 News");
//            $("#infoText").html("92 News Live channel...");
//        }
//        //News One
//        else if (alt == "NewsOne") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/aqHBDoJGXbU?autoplay=1");
//            $("#infoImage").attr('src', "../img/NEWSONE_News.jpg");
//            $("#infoHeading").html("News One");
//            $("#infoText").html("News One Live channel...");
//        }
//        //Dawn News
//        else if (alt == "Dawn") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/OsCY1C5rh0g?autoplay=1");
//            $("#infoImage").attr('src', "../img/DAWN_News.png");
//            $("#infoHeading").html("Dawn News");
//            $("#infoText").html("Dawn News Live channel...");
//        }
//        //Neo News
//        else if (alt == "Neo") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/tISFhTxqmVA?autoplay=1");
//            $("#infoImage").attr('src', "../img/NEO_News.png");
//            $("#infoHeading").html("Neo News");
//            $("#infoText").html("Neo News Live channel...");
//        }
//        //Dunya News
//        else if (alt == "Dunya") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/0q8pqdsMcoA?autoplay=1");
//            $("#infoImage").attr('src', "../img/DUNYA_News.png");
//            $("#infoHeading").html("Dunya News");
//            $("#infoText").html("Dunya News Live channel...");
//        }
//        //Express News
//        else if (alt == "Express") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/_-jyVPai8Po?autoplay=1");
//            $("#infoImage").attr('src', "../img/EXPRESS_News.png");
//            $("#infoHeading").html("Express News");
//            $("#infoText").html("Express News Live channel...");
//        }
//        //Waqt News
//        else if (alt == "Waqt") {
//            $("#iFrame").attr('src', "https://www.youtube.com/embed/3Zr3YF_FgIc?autoplay=1");
//            $("#infoImage").attr('src', "../img/WAQT_News.png");
//            $("#infoHeading").html("Waqt News");
//            $("#infoText").html("Waqt News Live channel...");
//        }
//        //Ptv Sports
//        else if (alt == "PtvSports") {
//            $("#iFrame").attr('src', "http://www.streamer247.com/ptvsports.php?autoplay=1");
//            $("#infoImage").attr('src', "../img/PTVSPORTS_News.png");
//            $("#infoHeading").html("Ptv Sports");
//            $("#infoText").html("Ptv Sports Live channel...");
//        }
//    });

//    $(".setTvInIFrame").click(function () {
//        var TvLogo = $(this).find(".TvLogo").attr("src");
//        var EmbedLink = $(this).find(".EmbedUrl").attr("alt");
//        $(".ramdom_img_jobs").attr("src", TvLogo);

//        document.getElementById("asdbnasmnd").innerHTML = change3;

//        var TvName = $(this).find(".TvName").html();
//        var Real_estate_bat = $(this).find(".Real_estate_bat").html();
       
//        //$(".set_real_location").html(chan)

//        $(".set_TvName").html(TvName);

//        $(".set_real_Price").html(Real_estate_pr);
//        $(".set_real_Bedroom").html(Real_estate_bed);
        
//    });

//});

$(document).ready(function () {
    $(".SetTvChannel").click(function () {
        var changeImage = $(this).find(".setImage").attr("src");
        var changeVideoUrl = $(this).find(".setImage").attr("alt");

        var ChannelName = $(this).find(".ChanelName").html();

        $(".cus_img").attr("src", changeImage);
        $(".cus_iframe").attr("src", changeVideoUrl);
        $(".ChannelNameSetter").html(ChannelName);
        // alert(ChannelName);

    });
});
