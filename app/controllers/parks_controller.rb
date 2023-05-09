class ParksController < ApplicationController
  def index
    @parks = Park.all
    render :index
  end

  def show
    @park = Park.find_by(id: params[:id])
    render :show
  end
end
