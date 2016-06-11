(function ($) {
	$(function () {
		var $body = $('body'),
			$document = $(document),
			$topNav = $('#top-nav'),
			$mobileToggle = $('#mobile-toggle'),
			$mobileNav = $('#mobile-nav'),
			$sliders = $('.slider'),
			$subscribe = $('.subscribe-bar'),
			$layoutWrapper = $('#layout-wrapper'),
			locations = ['us','uk','eu','au','fr','de','jp'];

		if (window.CURRENT_LOCALIZATION) {
			$body.addClass('location-is-' + CURRENT_LOCALIZATION);
			$.each(locations,function(i,location){
				var showClass = 'location-' + location + '-show',
					hideClasses = [];
				$.each(locations,function(idx,otherLocation){
					if (otherLocation === location) return;
					hideClasses.push('location-' + otherLocation + '-hide');
				});
				$('.'+showClass).removeClass(showClass).addClass(hideClasses.join(' '));
			});
		}


		$document.on('change', 'form.resource-section-form select', function(e){
			var self = $(this);
			window.location = self.val();
			e.preventDefault();
		});

		if ($sliders.length) {

			$sliders.each(function(){

				var slider = $(this),
					config = {
						dots: false,
						autoplay: true,
						autoplaySpeed: 6500,
						arrows: false,
						pauseOnHover: true,
						pauseOnDotsHover: true,
						adaptiveHeight: true,
						slide: 'section'
					};

				if(slider.hasClass('has-arrows')){
					config.arrows = true;
				}

				if(slider.hasClass('has-dots')){
					config.dots = true;
				}

				slider.slick(config);


			});
		}

		$document.on('click', '.lightbox', function (e) {

			if (!$.colorbox) {
				return;
			}

			var self = $(this),
				ref = null;


			if(self.data('href')){
				ref = self.data('href');
			}else if(self.attr('href')){
				ref = self.attr('href');
			}


			if(self.hasClass('youtube-lightbox')){

				var top = $topNav.outerHeight();

				$.colorbox({
					transition: 'none',
					href: ref,
					iframe: true,
					opacity: 0,
					innerWidth: '960',
					innerHeight:'720',
					width: '960',
					height: '720',
					fixed: true,
					top: top,
					maxWidth:'95%',
					maxHeight:'80%'
				});

				return false;

			}


			// if the ref begins with // then the next line will throw an error.

			if($(ref).length){
				window.location.hash = ref;

				var top = $layoutWrapper.offset().top;

				$.colorbox({
					transition: 'none',
					href:ref,
					inline:true,
					opacity: 0,
					innerWidth: '100%',
					innerHeight:'100%',
					width: '100%',
					height: $layoutWrapper.height(),
					scrolling: false,
					fixed: false,
					top: top,
					//top: 500,
					reposition: true,
					onCleanup: function() {
						window.location.hash = '';
					}
				});

				$('#colorbox').css({'top': top});
				$('html, body').animate({
					scrollTop: top - 75
				}, 100);

			}

/*
			else if(jQuery.type( ref ) === "string"){

				var top = $layoutWrapper.offset().top;

				$.colorbox({
					transition: 'none',
					href: ref,
					iframe: true,
					opacity: 0,
					innerWidth: '960',
					innerHeight:'720',
					width: '960',
					height: '720',
					top: top
				});

			}
*/

			e.preventDefault();
		});



		$document.ready(function(){
			$('a[href*=youtu]').each(function () {
			  var url = $(this).attr('href');
			  var regExp = /^.*(youtu\.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
			  var match = url.match(regExp);

			  if (match && match[2].length==11) {
			    var self = $(this),
			    	url = "//www.youtube.com/embed/"+match[2]+"?width=960&height=720&iframe=true&autoplay=1";

			    self.attr('href','javascript:void(0);').addClass('lightbox youtube-lightbox').attr('data-href', url);
			  }
			});

			// disabled for now...
			if(true == false){
				$('a[href*=vidyard]').each(function () {
				  var url = $(this).attr('href');
				  var regExp = /^.*(youtu\.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/;
				  var match = url.match(regExp);

				  if (match && match[2].length==11) {
				    var self = $(this),
				    	url = "//micro.marketo.com/play.vidyard.com/"+match[2]+".html?v=3.1.1&type=inline&preload=none";

				    self.attr('href','javascript:void(0);').addClass('lightbox vidyard-lightbox').attr('data-href', url);
				  }
				});
			}
		});



		var hash = window.location.hash;

		if(hash){

			setTimeout(function(){
				if($(hash + '-trigger').length > 0){
					$(hash + '-trigger').trigger('click');
				}
			}, 1000);
		}

		$document.ready(function(){
			var resource_embeded_media = $('.embedded-media');
			if(resource_embeded_media.length > 0){
				$('.activatable-tabs a:first-child').trigger('click');
			}
		});

		$document.on('click', '.activatable-tabs a', function (e) {

			var self = $(this),
				media = $(self.data('ref'));

			if(media.length > 0){
				$('.embedded-media .media-area').hide();

				$('.activatable-tabs a.active').removeClass('active');

				self.addClass('active');

				media.show();
			}

			e.preventDefault();

		});


		$document.on('click', '.more-less', function (e) {

			var self = $(this),
				ref = $(self.data('ref'));

			if (ref.length > 0) {

				$('html, body').animate({
					scrollTop: ref.offset().top
				}, 100);

				if (self.hasClass('opened')) {
					self.removeClass('opened');
					ref.slideUp();
					self.html('Get to Know Your Audience, Show More');
				} else {
					self.addClass('opened');
					ref.slideDown();
					self.html('Get to Know Your Audience, Show Less');
				}
			}

			e.preventDefault();
		});

		if (typeof colorbox !== 'undefined' && $.isFunction(colorbox)) {
			$(".lightbox").colorbox({width: "800", height: "auto", rel: 'gallery'});
		}

		$mobileNav.on('click', '*', function (e) {
			e.stopPropagation();
		});

		$mobileNav.on('click', 'a', function (e) {
			var self = $(this),
				menu = $(self.data('menu'));

			if(self.hasClass('expands')){

				if (menu.length > 0) {
					menu.addClass('expanded-menu').stop().animate({'margin-left': 0});
				}

				e.preventDefault();
			}else if(self.hasClass('back')){
				$('.expanded-menu').stop().animate({'margin-left': '100%'});
				e.preventDefault();
			}

		});


		function toggleMobileMenu(){
			$('.expanded-menu').stop().animate({'margin-left': '100%'});

			if ($body.hasClass('opened')) {

				$body.animate({left: 0}, function () {
					$body.removeClass('opened');
				});

				$mobileNav.animate({left: 0}, function () {
					$mobileNav.removeClass('opened');
				});

				$topNav.animate({left: 0});

			} else {

				if ($(window).width() >= 640) {
					$body.animate({left: '-35%'});
					$mobileNav.animate({left: '-35%'});
					$topNav.animate({left: '-35%'});
				} else {
					$body.animate({left: '-80%'});
					$mobileNav.animate({left: '-80%'});
					$topNav.animate({left: '-80%'});
				}
				$body.addClass('opened');

			}
		}

		$mobileToggle.on('click', function (e) {

			toggleMobileMenu();

			e.preventDefault();
			// prevents click through to html
			e.stopPropagation();
		});


		// closes the mobile menu if it's opened
		$(document).on('click', 'html',function() {
			if ($body.hasClass('opened')) {
				toggleMobileMenu();
			}
		});

        var $threshold = 50,
            $allowedTime = 100,
            $startTime = 0;
            $startX = 0,
            $startY = 0,
            $hDist = 0,
            $vDist = 0;

        function startTouching() {
            var el = document.querySelectorAll("html")[0];
            el.addEventListener("touchstart", handleStart, false);
            el.addEventListener("touchend", handleEnd, false);
            //el.addEventListener("touchcancel", handleCancel, false);


            //el.addEventListener("touchmove", handleMove, false);
        }

        function handleswipe(direction){

	        switch(direction){

		        case 'swipeUp':

		        break;

		        case 'swipeDown':

		        break;

		        case 'swipeLeft':

		        break;

		        case 'swipeRight':
					if ($body.hasClass('opened')) {
			            toggleMobileMenu();
			        }
		        break;
	        }

        }

        function handleStart(e) {
            //e.preventDefault();
            var touchobj = e.changedTouches[0],
	            $hDist = 0,
	            $vDist = 0,
	            $startTime = new Date().getTime();


        	$startX = touchobj.pageX;
        	$startY = touchobj.pageY;
        }

        function handleMove(e) {
            //e.preventDefault();
        }

        function handleEnd(e) {
            //e.preventDefault();
            var touchobj = e.changedTouches[0],

				$hDist = touchobj.pageX - $startX,
				$vDist = touchobj.pageY - $startY,
	            elapsedTime = new Date().getTime() - $startTime;


            var horizontalSwipe = ($hDist >= $threshold && Math.abs(touchobj.pageY - $startY) <= 100);

            if(horizontalSwipe){
		        if(touchobj.pageX > $startX){
			        return handleswipe('swipeRight');
		        }else{
			        return handleswipe('swipeLeft');
		        }

		        return;
            }

            var verticalSwipe = ($vDist >= $threshold && Math.abs(touchobj.pageX - $startX) <= 100);

            if(verticalSwipe){
		        if(touchobj.pageY > $startY){
			        return handleswipe('swipeUp');
		        }else{
			        return handleswipe('swipeDown');
		        }

		        return;
            }

        }

        // function handleCancel(e) {
        //     e.preventDefault();
        //     var touches = e.changedTouches;

        //     for (var i = 0; i < touches.length; i++) {
        //         ongoingTouches.splice(i, 1);  // remove it; we're done
        //     }
        // }

        startTouching();

		// optional...
		//$(this).scrollTop(0);

		//Slide top nav up on down scroll and down on up scroll
		var lastScrollTop = 0;

		function scrollit() {

			var st = $(this).scrollTop();

			if (st > lastScrollTop) {
				// scrolling down
				$topNav.addClass('scrolling');
				$mobileNav.addClass('scrolling');

			} else {
				// scrolling up
				$topNav.removeClass('scrolling');
				$mobileNav.removeClass('scrolling');
			}

		}

		// init scroll
		scrollit();

		$(window).scroll(function() {
			scrollit();
		});


		jQuery.fn.toggle_video = function(){

			return this.each(function() {

				var video = $(this),
					iframe = $('iframe', video),
					playing = $('.video-currently-playing');

				if(playing.length > 0){
					playing.each(function(){

						var playing_video = $(this),
							playing_iframe = $('iframe', playing_video),
							holder = playing_video.closest('.video-element-full-video');


						if(playing_video.hasClass('vidyard-video') || playing_video.hasClass('youtube-video')){

							playing_video.removeClass('video-currently-playing')

							//playing_iframe.data('video-src', playing_iframe.attr('src') );
							playing_iframe.attr('src', '');
							playing_iframe.fadeOut();

						}else{

							playing_video.removeClass('video-currently-playing')
							playing_video.get(0).pause();
							playing_video.get(0).currentTime = 0;
							playing_video.fadeOut();
						}

						holder.fadeOut();
					});
				}

				if(video.hasClass('vidyard-video') || video.hasClass('youtube-video')){

					if(iframe.data('video-src')){
						iframe.attr('src', iframe.data('video-src'));
					}else{

						iframe.attr('src', iframe.attr('src') + '&autoplay=1');
						iframe.data('video-src', iframe.attr('src'));

					}

					video.addClass('video-currently-playing').fadeIn();
					iframe.fadeIn();

				}else{
					video.fadeIn(function(){
						video.addClass('video-currently-playing').get(0).play();
					});
				}



			});

		};


		$(document).on('click', '.video-trigger', function(e){

			var self = $(this),
				video = $(self.data('video-reference')),
				iframe = $('iframe', video);

				$('.video-trigger.playing').removeClass('playing');
			// hide poster - causing problem with trigger click on poster in FF
			//$('.demo-video').css('background','none');
			//$('.demo-video .overlay, .demo-video .play-border').hide();

			self.addClass('playing');
			//self.hide();

			//bg =  $(self.data('video-bg-reference'));

			if(video.length > 0){
				video.toggle_video();
			}

			e.preventDefault();
		});

		/*$(document).on('click', '.demo-video .overlay', function(e) {
			$('.playlist .video-trigger').first().click();
		});*/

		//homepage customer tile hover animation
		$(".customer-story .tile").hover(function(){
			if (!$(this).hasClass('animated')) {
				$(this).find(".image img").dequeue().stop().animate({ top: "15%" });
				$(this).find(".content").dequeue().stop().animate({ top: "28%" });
				$(this).addClass("background-overlay");
			}
		}, function() {
			$(this).find(".image img").addClass('animated').animate({ top: "50%" }, "normal", "linear", function() {
				$(this).removeClass('animated').dequeue();
			});
			$(this).find(".content").dequeue().stop().animate({ top: "100%" });
			$(this).removeClass("background-overlay");
		});


		//Thank you after form success and
		//Don't show subscribe bar until form is loaded
		// Subscribe bar
		MktoForms2.whenReadyId(4630,function (form) {
			var first = true,
				$form = form.getFormElem();

			if (document.cookie.indexOf('WWWSubscribed') > -1) {
				$subscribe.remove();
				return false;
			} else {

				// check for cookie... (set below)
		        if(sessionStorage.getItem('HideSubscribeBar')){
					// 60 minutes
					if(parseInt(sessionStorage.getItem('HideSubscribeBar')) < (new Date()).getTime() ){
						$subscribe.css({opacity: 1, display: "block"});
					}else {
						$subscribe.remove();
						return false;
					}
				}else{
					$subscribe.css({opacity: 1, display: "block"});
				}


			}


			form.onSuccess(function(){
				//TODO - This should use marketo lead data being populated, not a cookie
				document.cookie = 'WWWSubscribed=Yes; max-age='+60*24*365+'; path=/; domain=.marketo.com';

                $form.find('[name="Email"]').val('Thank you for subscribing!');
				$form.find('button').text('Success!');

				setTimeout(function(){
					$subscribe.animate({bottom:($subscribe.outerHeight()*-1) + 'px'},400,function(){$subscribe.remove()});
				},2000);

				if (first) {
					tagLinkEvent('Resources - Subscribed - Hello Bar');
					first = false;
				}
				return false;
			});
		});


        //Thank you after form success and
		//Don't show subscribe bar until form is loaded
		// Subscribe bar
        // French
		MktoForms2.whenReadyId(4986,function (form) {
			var first = true,
				$form = form.getFormElem();

			if (document.cookie.indexOf('FRSubscribed') > -1) {
				$subscribe.remove();
				return false;
			} else {

				// check for cookie... (set below)
		        if(sessionStorage.getItem('HideSubscribeBar')){
					// 60 minutes
					if(parseInt(sessionStorage.getItem('HideSubscribeBar')) < (new Date()).getTime() ){
						$subscribe.css({opacity: 1, display: "block"});
					}else {
						$subscribe.remove();
						return false;
					}
				}else{
					$subscribe.css({opacity: 1, display: "block"});
				}


			}


			form.onSuccess(function(){
				//TODO - This should use marketo lead data being populated, not a cookie
				document.cookie = 'FRSubscribed=Yes; max-age='+60*24*365+'; path=/; domain=.marketo.com';

                $form.find('[name="Email"]').val('Merci de vous être abonné!');
				$form.find('button').text('Le succès!');

				setTimeout(function(){
					$subscribe.animate({bottom:($subscribe.outerHeight()*-1) + 'px'},400,function(){$subscribe.remove()});
				},2000);

				if (first) {
					tagLinkEvent('Resources - Subscribed - Hello Bar - FR');
					first = false;
				}
				return false;
			});
		});


        //Thank you after form success and
		//Don't show subscribe bar until form is loaded
		// Subscribe bar
        // German
		MktoForms2.whenReadyId(4987,function (form) {
			var first = true,
				$form = form.getFormElem();

			if (document.cookie.indexOf('DESubscribed') > -1) {
				$subscribe.remove();
				return false;
			} else {

				// check for cookie... (set below)
		        if(sessionStorage.getItem('HideSubscribeBar')){
					// 60 minutes
					if(parseInt(sessionStorage.getItem('HideSubscribeBar')) < (new Date()).getTime() ){
						$subscribe.css({opacity: 1, display: "block"});
					}else {
						$subscribe.remove();
						return false;
					}
				}else{
					$subscribe.css({opacity: 1, display: "block"});
				}


			}


			form.onSuccess(function(){
				//TODO - This should use marketo lead data being populated, not a cookie
				document.cookie = 'DESubscribed=Yes; max-age='+60*24*365+'; path=/; domain=.marketo.com';

                $form.find('[name="Email"]').val('Danke fürs Abonnieren!');
				$form.find('button').text('Erfolg!');


				setTimeout(function(){
					$subscribe.animate({bottom:($subscribe.outerHeight()*-1) + 'px'},400,function(){$subscribe.remove()});
				},2000);

				if (first) {
					tagLinkEvent('Resources - Subscribed - Hello Bar - DE');
					first = false;
				}
				return false;
			});
		});


		//Position subscribe bar as footer once you hit the bottom
		var $footer = $('footer').first(),
            $readyToTalk = $('.ready-to-talk').first()
			footer_height = $footer.outerHeight()+"px";
            readyToTalk_height = $readyToTalk.outerHeight()+"px";

		function checkOffset() {
            if ($($readyToTalk).length) {
                if ($document.scrollTop() + window.innerHeight <= $readyToTalk.offset().top) {
                    // restore when you scroll up
                    $subscribe.css({
                        bottom: 0,
                        position: 'fixed',
                    });
                } else {
                    $subscribe.css({
                        position: 'relative',
                    });
                }
            } else {
                if ($document.scrollTop() + window.innerHeight <= $footer.offset().top) {
                    // restore when you scroll up
                    $subscribe.css({
                        bottom: 0,
                        position: 'fixed',
                    });
                } else {
                    $subscribe.css({
                        position: 'relative',
                    });
                }
            }
		}
		checkOffset();
		$(document).scroll(checkOffset);
		$(window).resize(checkOffset);

        if($subscribe.hasClass('cta-only')){
        	if(sessionStorage.getItem('HideCTABar')){
        		$subscribe.remove();
        	}
        }

        $(document).scroll(function() {
          var y = $(this).scrollTop();
          if (y > 100) {

			// check for cookie... (set below)
	        if(sessionStorage.getItem('HideCTABar')){
				// 60 minutes
				if(parseInt(sessionStorage.getItem('HideCTABar')) < (new Date()).getTime() ){
					$('.cta-only').css({opacity: 1, display: "block"});
				}
			}else{
				$('.cta-only').css({opacity: 1, display: "block"});
			}

          }
        });

        //set HideCTABar HideSubscribeBar on click
        $(".close-me").click(function(){

	        if($subscribe.hasClass('cta-only')){
				sessionStorage.setItem('HideCTABar', (new Date()).getTime() + 60 * 1000 * 60); // 60 minutes into the fuuuture
	        }else{
				sessionStorage.setItem('HideSubscribeBar', (new Date()).getTime() + 60 * 1000 * 60); // 60 minutes into the fuuuture
            }

            $subscribe.remove();


/*			not handling cookies and sessions on the server
			$.ajax({
				type: 'GET',
				cache: false,
				url: '/action/close-subscribe-bar',
				data: {},
				beforeSend: function( xhr ) {
		            $subscribe.remove();
				},
				dataType: 'json'
			})
			.done(function(data){
				// we don't really need to do anything...
			});
*/


        });

/*
		$document.ready(function(){

	        if($subscribe.length > 0){

		        if(sessionStorage.getItem('HideSubscribeBar')){

					// 60 minutes
					if(parseInt(sessionStorage.getItem('HideSubscribeBar')) < (new Date()).getTime() ){
						$subscribe.css({'opacity':1});
					}else{
						// do nothing...
					}

				}else{
					$subscribe.css({'opacity':1});
				}
	        }

	    });
*/
		// lastly, replace special chars
		var re = /(®|™)/;
		$("body :not(iframe,script,sup,footer)").contents().filter(function(){
			return this.nodeType === 3;
		}).each(function(){
			var original = $(this).text();
			var output = original.replace(re,"<sup>$1</sup>");
			if (output != original && $(this).parents('sup').length === 0 && $(this).parents('footer').length === 0) {
				$(this).wrap("<p></p>").parent('p').html(output).contents().unwrap();
			}
		});

	});

}(jQuery));
