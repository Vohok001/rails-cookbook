class ReviewsController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @review = Review.new
  end

  def create
    @category = Category.find(params[:category_id])
    @review = Review.new(review_params)
    @review.category = @category
    if @review.save
      redirect_to category_path(@category), notice: 'Review sucessfully created!'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to category_path, status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating, :category_id)
  end
end
