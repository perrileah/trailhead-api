class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end

  def create
    @review = Review.create(
      hike_id: params[:hike_id],
      user_id: params[:user_id],
      ranking: params[:ranking],
      comments: params[:comments],
      image_url: params[:image_url],
      time: params[:time],
    )
    if @review.save
      render :show
    else
      render json: { errors: @review.errors.full_messages }
    end
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      hike_id: params[:hike_id] || @review.hike_id,
      user_id: params[:user_id] || @review.user_id,
      ranking: params[:ranking] || @review.ranking,
      comments: params[:comments] || @review.comments,
      image_url: params[:image_url] || @review.image_url,
      time: params[:time] || @review.time,
    )
    render :show
  end

  def destroy
    @review = Review.find_by(id: params[:id])
    @review.destroy
    render json: { message: "Review destroyed successfully" }
  end
end
