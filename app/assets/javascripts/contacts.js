function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).first().before(content.replace(regexp, new_id));
}


$(document).ready(function() {
  $(".clickable-row").click(function() {
      window.document.location = $(this).data("href");
  });

  $(".remove_link").click(function(event) {
    $(event.target).prevAll("input[type=hidden]").first().val("1");
    $(event.target).parents('.expandable_fields').first().hide();
  });

});
