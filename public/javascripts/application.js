// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery.ajaxSetup({ 
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
})

jQuery.fn.submitWithAjax = function() {
  this.submit(function() {
    $.post(this.action, $(this).serialize(), null, "script");
    return false;
  })
  return this;
};

$(document).ready(function() {
  $("#new_reservation").submitWithAjax();
})

$(document).ready(function() {
  $("#new_contact").submitWithAjax();
})

jQuery(function($) {
// create a convenient toggleLoading function
  var toggleLoading = function() { $("#loading-recommend").toggle() };
  $("new_reservation")
	    .bind("ajax:loading",  toggleLoading)
	    .bind("ajax:complete", toggleLoading)
	    .bind("ajax:success", function(data, status, xhr) {
	      $("#response").html(status);
	    });
});s
