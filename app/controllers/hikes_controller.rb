class HikesController < ApplicationController
  def index
    @hikes = Hike.all
    render :index
  end

  def create
    @hike = Hike.create(
      name: params[:name],
      park_id: params[:park_id],
      distance: params[:distance],
      time: params[:time],
      image_url: params[:image_url],
      route_type: params[:route_type]
    )
    if @hike.save
      render :show
    else
      render json: { errors: @hike.errors.full_messages }
    end
  end

  def show
    @hike = Hike.find_by(id: params[:id])
    render :show
  end
end
