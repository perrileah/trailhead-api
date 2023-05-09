class HikesController < ApplicationController
  def index
    @hikes = Hike.all
    render :index
  end
end
