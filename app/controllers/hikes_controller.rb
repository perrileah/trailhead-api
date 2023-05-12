class HikesController < ApplicationController
  def index
    page_size = 5

    @hikes = Hike.all.limit(page_size).offset(params[:page].to_i * page_size)
    render :index
  end

  def create
    @hike = Hike.create(
      name: params[:name],
      park_name: params[:park_name],
      park_id: params[:park_id],
      distance: params[:distance],
      time: params[:time],
      image_url: params[:image_url],
      route_type: params[:route_type],
      dog_friendly: params[:dog_friendly],
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

  def update
    @hike = Hike.find_by(id: params[:id])
    @hike.update(
      name: params[:name] || @hike.name,
      park_name: params[:park_name] || @hike.park_name,
      distance: params[:distance] || @hike.distance,
      time: params[:time] || @hike.time,
      image_url: params[:image_url] || @hike.image_url,
      route_type: params[:route_type] || @hike.route_type,
      dog_friendly: params[:dog_friendly] || @hike.dog_friendly,
    )
    render :show
  end

  def destroy
    @hike = Hike.find_by(id: params[:id])
    @hike.destroy
    render json: { message: "Hike destroyed successfully" }
  end
end
