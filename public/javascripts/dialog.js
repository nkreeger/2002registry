function DialogBox(initialHtml)
{
  var dialogDiv = $("<div class='dialog' style='display: none;'><a class='close'></a><div class='content'></div></div>");
  var maskDiv = $("<div class='dialog_mask' style='display:none;'></div>");
  $("body").append(dialogDiv);
  $("body").append(maskDiv);

  this.show = function() {
    maskDiv.fadeIn();
    dialogDiv.css("margin-left", -(dialogDiv.width() / 2) + "px");
    dialogDiv.css("margin-top", "100px");
    dialogDiv.fadeIn();
  };

  this.close = function() {
    dialogDiv.fadeOut();
    maskDiv.fadeOut();
    return false;
  };

  this.load = function(url, completeFunction) {
    dialogDiv.find(".content").load(url, completeFunction);
  };

  this.html = function(value) {
    dialogDiv.find(".content").html(value);
  };

  this.addClass = function(className) {
    dialogDiv.addClass(className);
  };

  this.find = function(selector) {
    return dialogDiv.find(".content").find(selector);
  };

  dialogDiv.find("a.close").click(this.close);
  if (typeof(initialHtml) != "undefined") {
    this.html(initialHtml);
  }
}

$.fn.releasePopup = function() {
  var target = $(this);
  $(this).click(function() {
    var body = $(document).find("body");
    var maskDiv = $("<div class='dialog_mask' style='display:none;'></div>");
    $("body").append(maskDiv);
    maskDiv.show();
    if (body.find(".preview_frame").length == 0) {
      var image = $(this).find("img").clone();
      var frame = $("<div class='preview_frame' style='display: none;'><a class='close'>&nbsp;</a></div>");
      frame.prepend(image);
      frame.find(".close").click(function() {
        frame.fadeOut(function() {
          frame.remove();
          maskDiv.remove();
        });
      });
      body.append(frame);
      frame.fadeIn();
    }
  });
};

