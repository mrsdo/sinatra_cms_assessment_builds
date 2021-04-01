class UsersController < ApplicationController

  get '/users' do
    if signed_in?
      # then find the user who's session params = to user_id
      @user = User.find(session[:user_id])

      erb :"users/show.html"
    else
      redirect "/signin.html"
    end
  end

  # # READ all listings
  # get '/listings' do
  #
  #   redirect_if_not_logged_in
  #   @listings = current_user.listings
  #   @user = User.find(session[:user_id])
  #   @listings = Listing.where(user_id: current_user)
  #   # @listings = Listing.all
  #   erb :'listings/index.html'
  # end

  get '/users/:id' do
    if signed_in?
      @user = User.find(params[:id])
      # binding.pry
      erb :'/users/show.html'
    else
      redirect '/signin.html'
    end
  end
  # GET: /let the user to go for the sign-in page --done
  get "/signin" do
    if signed_in?
      redirect '/users'
    else
      erb :"/users/signin.html"
    end
  end

  # GET: /let the user go for the sign-up page --done
  get "/signup" do
    if signed_in?
      redirect '/users'
    else
      erb :"/users/new.html"
    end
  end

  # POST: /send the sign-in info to the server and let the user to login
  post "/signin" do
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/users'
    else
      redirect "/signup"
    end
  end

  # POST:/send the signup info to the server and let the user to create account
  # post "/signup" do
  #   user = User.create(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email], :password => params[:password])
  #
  #   # binding.pry
  #   if user.save
  #     user = User.new(params[:user])
  #     # Create a new user session
  #     @user = User.create(params)
  #     redirect to "/users/#{user.id}"
  #   else
  #     "Error #{user.errors.full_messages.join(", ")}.\r"
  #     # erb :"/users/new.html", notice:
  #   end
  # end
  # 
  # # CREATE new user (save in db)
  # # create
  post '/signup' do
    user = User.new(params["user"])
    if user.save
      @user = User.new(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email], :password => params[:password])
      session[:user_id] = @user.id
      redirect to "/users/#{user.id}"
    else
      erb :'/users/new.html'
    end

  end


  # GET: /users/5 show a user with specific id
  get "/users/:id/edit" do
    @user = User.find_by(id: session[:user_id])
    if @user

      # there is no relation between this line and line 37 it just bcz of redirecting due to design
      # those two values are the end up equals
      erb :"/users/edit.html"
    else
      redirect "/signin"
    end
  end
  patch '/users/:id' do
    # binding.pry
    if signed_in?
      if params[:fname].empty?
        redirect "/users/#{params[:id]}/edit"
      else
        @user = User.find_by_id(params[:id])
        if @user == current_user
          if @user.update(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email])
            redirect to "/users/#{@user.id}"
          else
            redirect to "/users/#{@user.id}/edit"
          end
        else
          redirect to '/users'
        end
      end
    else
      redirect '/signin'
    end
  end
end

