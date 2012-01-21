//==================================================================================================
//
// @file registry.js
// @brief Registry javascript classes.
//
//==================================================================================================

(function($) {

  // ---
  // Car
  // ---
  function Car(vinNumber, callback) {
    this.vin_number = vinNumber;
    this.loaded = false;
    var self = this;
    $.get("/vins/" + vinNumber, function(data) {
      if (data.success) {
        self.is_registered = data.is_registered;
        if (self.is_registered) {
          self.registered_user = data.registered_user;
        }
        self.model = data.result.model;
        self.loaded = true;
        console.log(data);
      }
      callback(data.success);
    });
  }

  Car.prototype.claimCar = function(vinNumber, userId, callback) {
    // Need to post w/ vin number and user ID - not car ID.

    //
    // Still awaiting the fixes for the rails gem stuff.
    //
  }

  $(document).ready(function() {
    Registry.Car = Car;
  });
})(jQuery);
