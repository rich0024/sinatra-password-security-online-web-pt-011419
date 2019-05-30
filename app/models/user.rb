class User < ActiveRecord::Base
  has_secure_password

	post "/signup" do
  	user = User.new(:username => params[:username], :password => params[:password]) 
  	if user.save
    	redirect "/login"
  	else
    	redirect "/failure"
  	end
	end
	
end