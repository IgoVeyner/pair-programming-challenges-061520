require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  post "/search-users" do
    @users = User.find_by(name: params[:search])
    if @users
      redirect "/users/#{@users.id}"
    else
      redirect  "/users"
    end
  end

end
