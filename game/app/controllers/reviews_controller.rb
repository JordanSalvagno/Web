class ReviewsController < ApplicationController
  before_action :set_review, only: [:show,:edit, :update, :destroy]

  #GET vgames/:vgame_id/reviews/1
  def show
  end

  #GET vgames/:vgame_id/reviews/new
  def new
    @vgame = Vgame.find params[:vgame_id]
    @review = Review.new
  end
  
  #GET /reviews/1/edit
  def edit
  end

  #POST vgames:/:vgame_id/reviews
  def create
    @user = current_user
    @vgame = Vgame.find params[:vgame_id]
    @review = @vgame.reviews.new(review_params)
    @review.vgame = @vgame
    @review.user = @user
    
    if @review.save
      redirect_to vgame_url(@vgame), notice: 'Review was successfuly added.'
    else
      redirect_to vgame_url(@vgame), notice: 'Review was not added.'
    end
  end

  #PATCH/PUT /reviews/1
  def update
    if @review.update(review_params)
      redirect_to vgame_url(@review.vgame), notice: 'Review was successfully updated.'
    else
      render :edit
    end
  end

  #DELETE /reviews/1
  def destroy
    @review.destroy
    redirect_to vgame_url(@review.vgame), notice: 'Review was successfully destroyed.'
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:title, :reviewtext, :rating)
  end
end
