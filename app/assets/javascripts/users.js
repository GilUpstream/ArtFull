$('#following-button').on("mouseenter", function(e) {
  $('#following-button').hide();
  $('#unfollow-button').show();
});
$('#unfollow-button').on("mouseleave", function(e) {
  $('#following-button').show();
  $('#unfollow-button').hide();
});
