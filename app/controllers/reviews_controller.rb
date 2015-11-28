class ReviewsController < ApplicationController
  before_action :set_book
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews/new
  def new
    @review = Review.new(book: @book)
  end

  # POST /reviews
  def create
    @review = Review.new(review_params.merge(book: @book, user: current_user))

    if @review.save
      redirect_to @book, notice: 'Review was successfully created.'
    else
      render :new
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = @book.reviews.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:book_id, :review, :value, :user_id, :headline)
    end
end
