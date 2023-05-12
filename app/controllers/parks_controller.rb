class ParksController < ApplicationController

  def index
    page_size = 5

    @parks = Park.all.limit(page_size).offset(params[:page].to_i * page_size)
    render :index
  end

  def show
    @park = Park.find_by(id: params[:id])
    render :show
  end
end
