(function($) {
  $.fn.menuPopup = function(popupMenuSelector) {
    if ($(this).length == 0) {
      return;
    }

    var popupMenuElement = $(popupMenuSelector);
    var popupMenuLink = $(this);

    $(document).click(function(event) {
      if ($(event.target).parents(popupMenuSelector).length == 0 &&
          !$(event.target).is(popupMenuSelector))
      {
        popupMenuElement.hide();
        popupMenuLink.removeClass("active");
      }
    });

    popupMenuLink.click(function() {
      $("body").append(popupMenuElement);
      placePopupMenu(popupMenuLink, popupMenuElement);
      
      if (popupMenuElement.is(":visible")) {
        popupMenuLink.removeClass("active");
        popupMenuElement.hide();
      }
      else {
        popupMenuLink.addClass("active");
        popupMenuElement.show();
      }
      return false;
    });

    $(window).resize(function() {
      placePopupMenu(popupMenuLink, popupMenuElement);
    });

    function placePopupMenu(popupMenuLink, popupMenuElement) {
      popupMenuElement.css("left", "0px");
      if (popupMenuLink.offset().left + popupMenuElement.outerWidth() > $(window).width()) {
        var leftPos = (popupMenuLink.offset().left + popupMenuLink.outerWidth() - popupMenuElement.outerWidth());
        popupMenuElement.css("left", leftPos + "px");
      }
      else {
        popupMenuElement.css("left", popupMenuLink.offset().left + "px");
      }

      popupMenuElement.css("top", popupMenuLink.offset().top + popupMenuLink.height() + 10 + "px");
    }
  };
})(jQuery);
