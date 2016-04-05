class ResumesController < ApplicationController


def index

	render json: Resume.all

end

def show

	 @resume = Resume.find(params[:id])
	 render json: @resume

end





def create

	@resume= Buisness.find(params[:service_proivder_id]).resumes.build(resume_params)
	if @resume.save 
		render json: @resume
	end

			 	
end




private 


def service_provider_exists

	@serviceprovider = params[:resume][:service_proivder_id]
	ServiceProvider.exists?(:id => @service_proivder_id)


end

def resume_params
	params.require(:resume).permit(:name, :age, :phonenumber, :service_proivder_id, :experience
                                   )
end


end
