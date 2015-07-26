/*搜索框*/
F_side = function() {
  $("#search_box").hasClass("out") ? ($("#search_box").removeClass("out"), $("#find_search").find("i").find("img").attr({
    src: "static/wap/images/search.png"
  })) : ($("#find_search").find("i").find("img").attr({
    src: "static/wap/images/search.png"
  }), $("#search_box").addClass("out"))
},

F_search_showdelete = function() {
  $("#delete_search").css({
    display: "block"
  })
},
F_search_delete = function() {
  $("#key").val("")
};
$("#find_search").bind("click", F_side),
$("#delete_search").bind("click", F_search_delete),
$("#key").bind("keydown", F_search_showdelete);

/*幻灯片*/
$.fn.Slide = function(options) {
  var opts = $.extend({},
  $.fn.Slide.deflunt, options);
  var index = 1;
  var targetLi = $("." + opts.claNav + " li", $(this));
  var clickNext = $("." + opts.claNav, $(this));
  var clickPrev = $("." + opts.claNav, $(this));
  var ContentBox = $("." + opts.claCon, $(this));
  var ContentBoxNum = ContentBox.children().size();
  var autoPlay;
  var slideWH;
  if (opts.effect == "fade") {
	  ContentBox.children().first().css("z-index", "1");
  }
  return this.each(function() {
	  var $this = $(this);
	  var doPlay = function() {
		  $.fn.Slide.effect[opts.effect](ContentBox, targetLi, index, slideWH, opts);
		  index++;
		  if (index * opts.steps >= ContentBoxNum) {
			  index = 0;
		  }
	  };
	  if (opts.autoPlay) {
		  autoPlay = setInterval(doPlay, opts.timer);
		  ContentBox.hover(function() {
			  if (autoPlay) {
				  clearInterval(autoPlay);
			  }
		  },
		  function() {
			  if (autoPlay) {
				  clearInterval(autoPlay);
			  }
			  autoPlay = setInterval(doPlay, opts.timer);
		  });
	  }
	  targetLi.click(function() {
		  index = targetLi.index(this);
		  window.setTimeout(function() {
			  $.fn.Slide.effect[opts.effect](ContentBox, targetLi, index, slideWH, opts);
		  },
		  10);
	  });
  });
};
$.fn.Slide.deflunt = {
  effect: "scroolY",
  autoPlay: true,
  speed: "normal",
  timer: 1000,
  defIndex: 0,
  claNav: "sub",
  claCon: "banner",
  steps: 1
};
$.fn.Slide.effect = {
  fade: function(contentObj, navObj, i, slideW, opts) {
	  contentObj.children().eq(i).stop().animate({
		  opacity: 1
	  },
	  opts.speed).css({
		  "z-index": "1"
	  }).siblings().animate({
		  opacity: 0
	  },
	  opts.speed).css({
		  "z-index": "0"
	  });
	  navObj.eq(i).addClass("on").siblings().removeClass("on");
  },
};
$(function(){
  $("#slide").Slide({//banner
	effect:"fade",
	speed:600,
	timer:2500
  });
});

/*导航滑动显示+关闭+回到顶部*/
jQuery(document).ready(function($){
  $("#find_nav").click(function(){
    $("#nav").animate({
      'opacity': 0,
      'margin-left': -100},
      400).css("display","block");
  }, function() {
    $("#nav").animate({
      'opacity': 1,
      'margin-left': 200},
      400).css("display","block");
  });
  $("#close").click(function(){
    $("#nav").animate({
      'opacity': 1,
      'margin-left': 200},
      400).css("display","none");
  }, function() {
    $("#nav").animate({
      'opacity': 0,
      'margin-left': -100},
      400).css("display","none");
  });
  $(".totop").click(function() {
    $("html,body").animate({ scrollTop: 0 }, 200)
    return false;
  });
  if ($(window).scrollTop() < 1000) {
      $(".totop").hide()
  }
  $(window).scroll(function() {
      if ($(this).scrollTop() < 1000) {
          $(".totop").fadeOut("slow")
      } else {
          $(".totop").fadeIn("slow")
      }
  });
});
