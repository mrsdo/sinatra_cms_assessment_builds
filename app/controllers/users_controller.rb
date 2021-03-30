# frozen_string_literal: true

# Users
class UsersController < ApplicationController


  # READ all users
  get '/users' do

    redirect_if_not_logged_in
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/users/show.html'
    else
      redirect "/signin"
    end
  end

  # CREATE new user (render form)
  get "/signup" do
    redirect_if_logged_in
    erb :'users/new.html'
  end

  # READ 1 User
  get '/users/:id' do
    redirect_if_not_logged_in
    redirect_if_not_authorized
    erb :'users/show.html'
  end

  # CREATE new User(save in db)class UsersController < ApplicationController
  #
  #   get '/users' do
  #     if signed_in?
  #       # then find the user who's session params = to user_id
  #       @user = User.find(session[:user_id])
  #       # Display the listings where user_id = to current user
  #
  #
  #       erb :"users/show.html"
  #     else
  #       redirect "/signin"
  #     end
  #   end
  #
  #   get '/users/:id' do
  #     if signed_in?
  #       @user = User.find(params[:id])
  #       # binding.pry
  #       erb :'/users/show.html'
  #     else
  #       redirect '/signin'
  #     end
  #   end
  #   # GET: /let the user to go for the sign-in page --done
  #   get "/signin" do
  #     if signed_in?
  #       redirect '/listings'
  #     else
  #       erb :"/users/signin.html"
  #     end
  #   end
  #
  #   # GET: /let the user go for the sign-up page --done
  #   get "/signup" do
  #     if signed_in?
  #       redirect '/listings'
  #     else
  #       erb :"/users/new.html"
  #     end
  #   end
  #
  #   # POST: /send the sign-in info to the server and let the user to login
  #   post "/signin" do
  #     @user = User.find_by(:email => params[:email])
  #     if @user && @user.authenticate(params[:password])
  #       session[:user_id] = @user.id
  #       redirect '/listings'
  #     else
  #       redirect "/signup"
  #     end
  #   end
  #   #POST:/send the signup info to the server and let the user to create account
  #   post "/signup" do
  #     # if one of the entry field is empty direct to the signup page
  #     if params[:fname].empty? || params[:lname].empty? || params[:username].empty? || params[:email].empty? || params[:password].empty?
  #       redirect "/signup"
  #     else
  #       #else create a new instance of user using params
  #       # set session[:user_id] to newly created user id
  #       #finally redirect the user to the listings list page
  #       # binding.pry
  #       @user = User.create(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email], :password => params[:password])
  #       # @user = User.create(params)
  #
  #       @user.save
  #       session[:user_id] = @user.id
  #       redirect "/users/#{@user.id}"
  #     end
  #   end
  #   get "/signout" do
  #     #if the user is logged in then clear the session and redirect to the /signin page
  #     #else redirect to the /index page
  #     if signed_in?
  #       session.destroy
  #       redirect "/signin"
  #     else
  #       redirect "/welcome"
  #     end
  #   end
  #
  #   # GET: /users/5 show a user with specific id
  #   get "/users/:id/edit" do
  #     @user = User.find_by(id: session[:user_id])
  #     if @user
  #
  #       # there is no relation between this line and line 37 it just bcz of redirecting due to design
  #       # those two values are the end up equals
  #       erb :"/users/edit.html"
  #     else
  #       redirect "/signin"
  #     end
  #   end
  #   patch '/users/:id' do
  #     # binding.pry
  #     if signed_in?
  #       if params[:fname].empty?
  #         redirect "/users/#{params[:id]}/edit"
  #       else
  #         @user = User.find_by_id(params[:id])
  #         if @user == current_user
  #           if @user.update(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email])
  #             redirect to "/users/#{@user.id}"
  #           else
  #             redirect to "/users/#{@user.id}/edit"
  #           end
  #         else
  #           redirect to '/users'
  #         end
  #       end
  #     else
  #       redirect '/signin'
  #     end
  #   end
  # end
  post '/users' do
    user = User.new(params[:user])
    if user.save
      redirect
      redirect to "/users/#{user.id}", notice: "User #{@user.fname + @user.lname} was successfully created."
    else
      flash[:errors] = user.errors.full_messages
      redirect "/signup"
    end
  end


  # UPDATE 1 user (render form)
  get '/users/:id/edit' do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    erb :'users/edit.html'
  end

  # UPDATE 1 user (save in db)
  patch '/users/:id' do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    if @user.update(params["user"])
      redirect "users/#{@user.id}", notice: "User #{@user.fname + @user.lname} was successfully updated."
    else
      redirect "users/#{@user.id}/edit"
    end
  end

  # DELETE 1 user
  delete "/users/:id" do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    @user.destroy

    redirect "/users"
  end

  private

  def redirect_if_not_authorized
    @user = User.find_by_id(params[:id])
    if @user.user_id != session["user_id"]
      redirect "/signup"
    end
  end


end