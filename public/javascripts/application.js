jQuery(function($) {
  // create a convenient toggleLoading function
  var toggleLoading = function() { $("#loading").toggle() };

  $("#new_reservation")
    .bind("ajax:loading",  toggleLoading)
    .bind("ajax:complete", toggleLoading)
    .bind("ajax:success", function(event, data, status, xhr) {
      $("#form-home").html(data);
    });

  $("#new_contact")
    .bind("ajax:loading",  toggleLoading)
    .bind("ajax:complete", toggleLoading)
    .bind("ajax:success", function(event, data, status, xhr) {
      $("#form-home").html(data);
    });
});