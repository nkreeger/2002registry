require "geokit"

class LocationsController < ApplicationController
  def lookup
    location = Geokit::Geocoders::IpGeocoder.do_geocode(request.remote_ip)
    render :json => {
      :success => (!location.country_code.nil? && location.country_code != "XX"),
      :country_code => location.country_code,
      :state_code => location.state
    }
  end
end
