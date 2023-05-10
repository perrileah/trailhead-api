class ParksController < ApplicationController
  # response = HTTP.get("https://kygisserver.ky.gov/arcgis/rest/services/WGS84WM_Services/Ky_Recreational_Trails_WGS84WM/MapServer/11/query?where=1%3D1&outFields=HIKING,WATER_TRL,HYPERLINK,COMMENTS,DESCRIPTN,FEE,DOGS,PUBLC_NAME,TRAIL_MILE,TRAIL_NAME,LANDTYPE,SCHEDULE&outSR=4326&f=json")
  # data = JSON.parse(response.body)
  # render json: data

  def index
    @parks = Park.all
    render :index
  end

  def show
    @park = Park.find_by(id: params[:id])
    render :show
  end
end
