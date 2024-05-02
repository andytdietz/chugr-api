# class BreweryMapController < ApplicationController
#   def static_map
#     latitude = params[:latitude]
#     longitude = params[:longitude]
#     api_key = ENV['GOOGLE_MAPS_API_KEY'] # Fetch API key from environment variable
#     static_map_url = "https://maps.googleapis.com/maps/api/staticmap?center=#{latitude},#{longitude}&zoom=15&size=400x300&markers=color:red%7Clabel:B%7C#{latitude},#{longitude}&key=#{api_key}"

#     begin
#       map_image = HTTParty.get(static_map_url)
#       send_data map_image.body, type: "image/png", disposition: "inline"
#     rescue StandardError => e
#       logger.error("Error fetching static map: #{e.message}")
#       render plain: "Internal Server Error", status: :internal_server_error
#     end
#   end

#   def directions
#     latitude = params[:latitude]
#     longitude = params[:longitude]
#     destination = "#{latitude},#{longitude}"
#     api_key = ENV['GOOGLE_MAPS_API_KEY'] # Fetch API key from environment variable
#     directions_url = "https://www.google.com/maps/dir/?api=1&destination=#{destination}&key=#{api_key}"

#     begin
#       redirect_to directions_url
#     rescue StandardError => e
#       logger.error("Error fetching directions: #{e.message}")
#       render plain: "Internal Server Error", status: :internal_server_error
#     end
#   end
# end
#   end
# end
