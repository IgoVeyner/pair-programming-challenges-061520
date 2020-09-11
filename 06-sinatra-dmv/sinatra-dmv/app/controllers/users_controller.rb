class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    @users = User.all

    erb :"/users/index.html"
  end

  # GET: /users/new
  get "/users/new" do
    erb :"/users/new.html"
  end

  # POST: /users
  post "/users" do
    user = User.new(params)
    user.save

    redirect "/users"
  end

  # GET: /users/5
  get "/users/:id" do
    @user = User.find(params[:id])

    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    @user = User.find(params[:id])

    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    @user = User.find(params[:id])
    @user.name = params[:name]
    @user.address = params[:address]
    @user.height = params[:height]
    @user.hair = params[:hair]
    @user.eye_color = params[:eye_color]
    @user.save

    redirect "/users/#{@user.id}"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    user = User.find(params[:id])
    user.destroy

    redirect "/users"
  end
end
