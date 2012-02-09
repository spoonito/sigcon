// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
var $j = jQuery.noConflict();

(function($) {
  

  $(document).ready(function()
  {
    // Tooltips (see http://onehackoranother.com/projects/jquery/tipsy)
    $j('img').each( function() {
      if ($j(this).get(0).title != '') {
        $j(this).tipsy();
      }
    });
  });

  // Scroll effect for anchors
  jQuery(function( $ )
  {
  	$('a').click(function() {
  	   if ($(this).attr('class') == 'anchor') {
  		   $.scrollTo(this.hash, 500);
  		   $(this.hash).find('span.message').text(this.href);
  		   return false;
  	   }
  	});
  });

})(jQuery);