jQuery(function($) {
  // create a convenient toggleLoading function
  var toggleLoading = function() { $("#loading").toggle() };
  var toggleLoading2 = function() { $("#loading-c").toggle() };

  $("#new_reservation")
    .bind("ajax:loading",  toggleLoading)
    .bind("ajax:complete", toggleLoading)
    .bind("ajax:success", function(event, data, status, xhr) {
      $("#form-home").html(data);
    });

  $("#new_contact")
    .bind("ajax:loading",  toggleLoading2)
    .bind("ajax:complete", toggleLoading2)
    .bind("ajax:success", function(event, data, status, xhr) {
      $("#form-home").html(data);
    });
});