class Review < ApplicationRecord
  belongs_to :restaurant
  #A review must have content and a rating
  validates :content, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  #A review’s rating must be a number between 0 and 5.
end


#def create
#@review = Review.new(review_params)
# we need `restaurant_id` to associate review with corresponding restaurant
# @restaurant = Restaurant.find(params[:restaurant_id])
# @review.restaurant = @restaurant
# @review.save
# redirect_to restaurant_path(@restaurant)
# end

# private

# def review_params
# params.require(:review).permit(:content)
# end
