class ResumesController < ApplicationController

	def create
		
@zakis =  Buisness.create(  username: 'Zakis' , 
			   			email:'rafehsaeed@yahoo.com', 
			   			password: 'dadidadi',
			   			buisnessname: "zakis",
			   			address: '200 donald st'


			 	)

@review1 = Review.create(rating: '2.0', comment:"hehehehe" , date:Date.today.to_s , service_provider_id: '4', buisness_id: "2")

render json: @review1
end

end
