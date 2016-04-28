class ServiceprovidersController < ApplicationController

	#returns JSON of all admins
def index
	render json: ServiceProvider.all
end

#creates admin
def create

	if service_provider_exists
		render text: "Cannot create duplicate ServiceProvider"
	else
	@serviceprovider = ServiceProvider.new(service_provider_params)
	if @serviceprovider.save 
		render json: @serviceprovider
	end
		render text: "Service Provider cannot be saved"
	end
end

def show 
	 @serviceprovider = ServiceProvider.find(params[:id])
	 render json: @serviceprovider
end

#Creates a service by a service Providers
def addservice

 @service = ServiceProvider.find_by(username: params[:serviceprovider][:username]);
 permitted = params[:serviceprovider].permit( :description, :category_id);
 @service.services.create(permitted);

 render json: @service


end


private

def service_provider_exists
	@email = params[:serviceprovider][:email]

	if @email != nil
		ServiceProvider.exists?(:email => @email)
	end

end


def service_provider_params
	params.require(:serviceprovider).permit(:username, :email, :password, :firstname , :lastname , :verified , :postalcode
                                   )
end



end
