/**
 * 
 */
		$(document).ready(function(){
			$(".menu-icon").on("click",function(){
				$("nav ul").toggleClass("showing");
			});
		});

        $(window).on('scroll', function(){
        if($(window).scrollTop()) {
            $('nav').addClass('black');
        }
        else
            {
                $('nav').removeClass('black')
            }
    });
        
        
        
        function rotateimages(){
        	 
            $(".box").css("visibility", "visible");
//            $( "div.current" ).next().css( "", "red" );
            var switchaxis = $(".current") ;
     
            var myid = switchaxis.attr("id");
     
     
            if (myid == "boxfour"){
                // we can't use next() we need to manually set the classes and
                // restart the order ...
                $("#boxzero").addClass("current").removeClass("waiting");
                switchaxis.addClass("waiting").removeClass("current");
                return ;
            }
     
//            alert(myid);
            switchaxis.next().addClass("current").removeClass("waiting");
            switchaxis.removeClass("current");
            switchaxis.addClass("waiting");
     
//            $( "div.current" ).next().addClass("current");
            // note that when it gets to the lasat div element ... there are no longer any
            // sibling elements to be sought by the .next() method ... so it will result in
            // "undefined" ...
     
     
        }
     
        $(document).ready(function(){
     
     
            setInterval("rotateimages()", 5000);
     
     
     
     
        });
        
        function myFunction() {
            var x = document.getElementById("myTopnav");
            if (x.className === "topnav") {
                x.className += " responsive";
            } else {
                x.className = "topnav";
            }
        } 