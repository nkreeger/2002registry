require "geokit"

class LocationsController < ApplicationController
  def lookup
    Rails.logger.info(Geokit::Geocoders::IpGeocoder.do_geocode(request.remote_ip).inspect)
    render :json => {
      :success => true
    }
  end
end