/*!
 * Start Bootstrap - Agnecy Bootstrap Theme (http://startbootstrap.com)
 * Code licensed under the Apache License v2.0.
 * For details, see http://www.apache.org/licenses/LICENSE-2.0.
 */

// jQuery for page scrolling feature - requires jQuery Easing plugin


$(function() {
    $('a.page-scroll').bind('click', function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Highlight the top nav as scrolling occurs
$('body').scrollspy({
    target: '.navbar-fixed-top'
})

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

$('.carousel').carousel({
  interval: 2000
});

$().timelinr({
  orientation: 'horizontal',
  // value: horizontal | vertical, default to horizontal
  containerDiv: '#timeline',
  // value: any HTML tag or #id, default to #timeline
  datesDiv: '#dates',
  // value: any HTML tag or #id, default to #dates
  datesSelectedClass: 'selected',
  // value: any class, default to selected
  datesSpeed: 'normal',
  // value: integer between 100 and 1000 (recommended) or 'slow', 'normal' or 'fast'; default to normal
  issuesDiv : '#issues',
  // value: any HTML tag or #id, default to #issues
  issuesSelectedClass: 'selected',
  // value: any class, default to selected
  issuesSpeed: 'fast',
  // value: integer between 100 and 1000 (recommended) or 'slow', 'normal' or 'fast'; default to fast
  issuesTransparency: 0.2,
  // value: integer between 0 and 1 (recommended), default to 0.2
  issuesTransparencySpeed: 500,
  // value: integer between 100 and 1000 (recommended), default to 500 (normal)
  prevButton: '#prev',
  // value: any HTML tag or #id, default to #prev
  nextButton: '#next',
  // value: any HTML tag or #id, default to #next
  arrowKeys: 'false',
  // value: true/false, default to false
  startAt: 1,
  // value: integer, default to 1 (first)
  autoPlay: 'false',
  // value: true | false, default to false
  autoPlayDirection: 'forward',
  // value: forward | backward, default to forward
  autoPlayPause: 2000
  // value: integer (1000 = 1 seg), default to 2000 (2segs)< });
});
