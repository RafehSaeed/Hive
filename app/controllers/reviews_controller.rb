class ReviewsController < ApplicationController

	def create

	#create review
	@review = Buisness.find(params[:buisness_id]).reviews.build(review_params)
	if @review.save 
		render json: @review
	end


	end


	def index

		render json: Review.all

	end

	def delete

		#only delete if user type is admin

	end

private
	 def review_params
     params.require(:review).permit(:date, :comment ,:rating,:service_provider_id , :buisness_id)
 	 end


end
