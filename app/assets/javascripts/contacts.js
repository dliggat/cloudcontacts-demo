(function() {

  $(document).ready(function() {
    $(".clickable-row").click(function() {
        window.document.location = $(this).data("href");
    });

    $(".remove_link").click(function(event) {
      window.blar = $(event.target);
      $(event.target).prevAll("input[type=hidden]").first().val("1");
      $(event.target).parents('.expandable_fields').first().hide();
    });
  });


})();
