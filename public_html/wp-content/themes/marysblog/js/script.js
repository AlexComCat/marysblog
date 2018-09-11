document.addEventListener('DOMContentLoaded', function(){

    // Initializing variables
    let aside,
        autor,
        birds,
        contWrap,
        contWrapLoad,
        doc,
        foot,
        header,
        logo,
        main,
        nav,
        navLoad,
        params,
        scroll,
        sun,
        sunLoad,
        toggle,
        vkSubscribe,
        win;

    // Setting of values of variables function
    let setVal = function(){
        aside = {
            posTop : 28,
            height : $('aside').height(),
            width : $('aside').width()
        };
        autor = {
            width : $('.autor_wrap').width()
        };
        birds = {
            height : $('.birds').height(),
            posTop : $('.birds').position().top,
            width : $('.birds').width()
        };
        contWrap = {
            height : $('.cont_wrap').height(),
            margLeft: parseInt($('.cont_wrap').css("margin-left"),10),
            posTop : $('.cont_wrap').position().top,
            offsetTop : $('.cont_wrap').offset().top,
            width :  $('.cont_wrap').width()
        };
        doc = {
            height: $(document).height(),
            width: $(document).width()
        };
        foot = {
            height: $('footer').height(),
            margTop: parseInt($('footer').css("margin-top"),10),
            margBot: parseInt($('footer').css("margin-bottom"),10),
            width: $('footer').width()
        };
        header = {
            height: $('header').height()
        };
        logo = {
            height: $('.logo').height(),
            margTop: parseInt($('.logo').css("margin-top"),10),
            offsetTop : $('.logo').offset().top
        };
        main = {
            height: $('main').height(),
            posLeft: $('main').position().left,
            width: $('main').width()
        };
        nav = {
            height: $('nav').height(),
            margTop:  parseInt($('nav').css("margin-top"),10)
        };
        scroll = {
            top : $(document).scrollTop()
        };
        sun = {
            height: $('.sun').height(),
            posTop : $('.sun').position().top
        };
        vkSubscribe = {
            height: $('#vk_subscribe').height()
        };
        win = {
            height: $(window).height(),
            width: $(window).width()
        };
    };

    // Setting variable values when loading the DOM
    let setValAnLoad = function(){
        navLoad = {
            offsetTop : $('nav').offset().top, 
            margTop : parseInt($('nav').css("margin-top"),10)
        };
        sunLoad = {posTop : parseInt($('.sun').css("top"),10)};     //Top position of the sun in css file
        contWrapLoad = {
            margTop: parseInt($('.cont_wrap').css("margin-top"),10),
            posTop : $('.cont_wrap').position().top
        };
    };    

    let negativeScroll = function(){
        if (scroll.top < 0){
            $('body').addClass('body_fixed');  
        }
        else{
            $('body').removeClass('body_fixed');
        };
    };

    // Color change of the active menu item
    let navColor = function(){
        params = window
        .location
        .search
        .replace('?','')
        .split('&')
        .reduce(
            function(p,e){
                var a = e.split('=');
                p[ decodeURIComponent(a[0])] = decodeURIComponent(a[1]);
                return p;
            },
            {}
        );
        $('#link_'+ params['cat']).css({
            'pointer-events' : 'none',
            'cursor' : 'default'
        });
        if (params['cat'] == 11){
            $('#link_'+ params['cat']).css({
                'color' : '#df0f1d'
            });
        }
        else{
            $('#link_'+ params['cat']).css({
                'color' : '#fff'
            });
        };
    };

    // Add VkWidget functions
    let addVkGroup = function(){
        try{
            VK.Widgets.Group("vk_group", {mode: 3, width: "auto", color1: 'FCFCFC', color2: '4C4C4C', color3: '4A76A8'}, 34213828);  
        } catch(e){
            $("#vk_group").html("<p>Oops...</p><p>Здесь была группа VK</p><p>но с ней нет соединения</p>");
        };
    };
    let addVkSubscribe = function(){
        $('#vk_subscribe').css({
            'display' : 'block'
        });
        contWrap.height = $('.cont_wrap').height();
        VK.Widgets.Subscribe("vk_subscribe", {soft: 1}, 150333774);
        vkSubscribe = {
            height : $("#vk_subscribe").height()
        };
    };
    
    let addScriptVk = function(src){
        let script = document.createElement('script');
        script.type = 'text/javascript';
        script.src = 'https://vk.com/js/api/openapi.js?154';
        document.body.appendChild(script);
        addVkGroup();
        if (params['cat'] == 11){
            addVkSubscribe();
            
        };
    };

    let checkConnectionVK = function(url){   
        $.ajax({
            url: url,
            type: "get",
            cache: false,
            dataType: 'jsonp', // it is for supporting crossdomain
            crossDomain : true,
            asynchronous : false,
            jsonpCallback: 'deadCode',
            timeout : 1500, // set a timeout in milliseconds
            complete : function(xhr, responseText, thrownError) {
                if(xhr.status == "200") {
                    addScriptVk(url);
                }
                else{
                    $("#vk_group").html("<p>Oops...</p><p>Здесь была группа VK</p><p>но с ней нет соединения</p>");
                };
            }
        });
    };
    
    // Motion of birds and sun
    let setParallaxVal = function(){
        if(scroll.top <= birds.posTop + birds.height){
            $('.birds').css({'left' : (win.width / 2 - birds.width * 1.5) + scroll.top + 'px'});
            
            $('.sun').css({'top' : scroll.top / 3 + sunLoad.posTop + 'px'});
        };
    };

    // Birds animation
    let birdsMove = function(){
        if(scroll.top <= birds.posTop + birds.height){
            $('.birds').css({
                'background' : 'url("/wp-content/themes/marysblog/img/birdsFly.gif") no-repeat center',
                'background-size' : 'cover'
            });
        };
    };

    // Sidebar position
    let asidePos = function(){
        if(scroll.top < contWrap.offsetTop - nav.height - contWrapLoad.margTop ||
                scroll.top + nav.height + aside.posTop + aside.height >= contWrap.posTop + contWrap.height || 
                win.width < 900){
            $('aside').css({
                'position' : '',
                'left' : '',
                'top': '',
                'width' : ''
            });
        }
        else if(scroll.top >= contWrap.posTop && 
                    scroll.top + nav.height + aside.posTop + aside.height < contWrap.posTop + contWrap.height){
            $('aside').css({
                'left' : main.posLeft + main.width + (contWrap.width / 100 * 2.6) + 'px',
                'position' : 'fixed',
                'top': nav.height + 28 + 'px',                    
                'width' : 31.6 * (contWrap.width / 100)
            });
        }; 
    };

    // Click on hamburger
    let clickHamburger = function() {

        let toggles = document.querySelectorAll(".toggle-hamburger");

        for (let i = toggles.length - 1; i >= 0; i--) {
            toggle = toggles[i];
            toggleHandler(toggle);
        };
        
        function toggleHandler(toggle) {
            toggle.addEventListener( "click", function(e) {
                e.preventDefault();
                $('.nav_section').slideToggle(500);
                if (toggle.classList.contains("is-active") === true){
                    toggle.classList.remove("is-active");
                }
                else{
                    toggle.classList.add("is-active");                     
                };
            });
        };    
    };

    // Content wrapper position
    let contWrapPos = function(){
        if(scroll.top < contWrap.offsetTop - nav.height - contWrapLoad.margTop){
            $('.cont_wrap').css({
                'align-items': 'flex-start',
                'margin-top' : ''
            });
        }
        else if(scroll.top >= contWrap.posTop && 
                    scroll.top + nav.height + aside.posTop + aside.height < contWrap.posTop + contWrap.height){    
            $('.cont_wrap').css({
                'margin-top' : navLoad.margTop + nav.height + contWrapLoad.margTop + 'px',
            });
        }
        else if(scroll.top + nav.height + aside.posTop + aside.height >= contWrap.posTop + contWrap.height){
            if (win.width >= 900){
                $('.cont_wrap').css({
                    'align-items': 'flex-end',
                    'margin-top' : nav.margTop + nav.height + contWrapLoad.margTop + 'px'
                });
            };
        }; 
    };

    // Menu position
    let navPos = function(){
        if(scroll.top < contWrap.offsetTop - nav.height - contWrapLoad.margTop){
            $('nav').removeClass('nav_fixed');
            $('.nav_center').removeClass('nav_center_fixed');
        }
        else if(scroll.top >= contWrap.posTop && scroll.top + nav.height + aside.posTop + aside.height < contWrap.posTop + contWrap.height){
            $('nav').addClass('nav_fixed');
            $('.nav_center').addClass('nav_center_fixed');
        }
        else if(scroll.top + nav.height + aside.posTop + aside.height >= contWrap.posTop + contWrap.height){
            $('nav').addClass('nav_fixed');
            $('.nav_center').addClass('nav_center_fixed');
        };
    };          

    // Visibility of the menu when display resize
    let navSectionDisplay = function(){
        if (win.width >= 900){
            $('.nav_section').css({
                "display" : ""
            });
            if (toggle.classList.contains("is-active") === true){
                toggle.classList.remove("is-active");
            }
        };
    };

    // toTopButton visibility
    let toTopButtonPos = function(){
        if(scroll.top < contWrap.offsetTop - nav.height - contWrapLoad.margTop){
            $('#toTop').fadeOut();
        }
        else if((scroll.top >= contWrap.posTop && scroll.top + nav.height + aside.posTop + aside.height < contWrap.posTop + contWrap.height) || 
                    scroll.top + nav.height + aside.posTop + aside.height >= contWrap.posTop + contWrap.height){
            $('#toTop').fadeIn();
        };
    };

    // Functions grouping
    let funcGroup = function (){
        setParallaxVal();
        asidePos();
        contWrapPos();
        navPos();
        toTopButtonPos();
    };

    setVal();       //Initialization to setting values of a variable
    setValAnLoad();
    navColor();    
    checkConnectionVK('https://vk.com/js/api/openapi.js');
    funcGroup();
    clickHamburger();

    // Event Tracking: \\

    // 1.Window resize event
    $(window).resize(function(){
        setVal();
        funcGroup();
        navSectionDisplay();
        
        // Change width for VK Widget when resize window
        $("#vk_group").empty();
        addVkGroup();

        //Set value in aside.height after VK Widget initialization 
        aside.height = $('aside').height();
    });

    // 2.Scroll running event
    $(window).scroll(function(){
        scroll.top = $(document).scrollTop();
        funcGroup();
        negativeScroll();
        birdsMove();
        
    });
    
    // 3.Screen scroll stop event 
    let timer = null;
    $(window).on('scroll', function() {
    clearTimeout(timer);    
    timer = setTimeout(function() {
        $('.birds').css({
            'background' : 'url("/wp-content/themes/marysblog/img/birds.png") no-repeat center',
            'background-size' : 'cover'});
    }, 100);
    });

    // 4.Click on toTop button event 
    $('#toTop').click(function() {

        $('body,html').animate({scrollTop:0},800);
        
    });
}, false);