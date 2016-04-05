class AdminsController < ApplicationController



#returns JSON of all admins
def index
render json: Admin.all
end

#creates admin
def create

	if admin_exists
		render text: "admin already exists"
	else
	@admin = Admin.new(user_params)
	if @admin.save 
		render json: @admin
	end
		render text: "It cannot be saved"
	end
end

def show 
	 @admin = Admin.find(params[:id])
	 render json: @admin
end


private

def admin_exists
	@email = params[:admin][:email]
	Admin.exists?(:email => @email)

end


def user_params
      params.require(:admin).permit(:username, :email, :password,
                                   )
end

end

