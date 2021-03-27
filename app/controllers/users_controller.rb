class UsersController < ApplicationController

  get '/users' do
    redirect_if_logged_in
    erb :"/users/index"

  end
  get '/users/:id' do
    if signed_in?
      @user = User.find(params[:id])
      erb :'/listings/show'
    else
      redirect '/signin'
    end
  end
  # GET: /let the user to go for the sign-in page --done
  get "/signin" do
    if signed_in?
      redirect '/listings'
    else
      erb :"/signin"
    end
  end

  # GET: /let the user go for the sign-up page --done
  get "/signup" do
    if signed_in?
      redirect '/listings'
    else
      erb :"/users/new.html"
    end
  end

  # POST: /send the sign-in info to the server and let the user to login
  post "/signin" do
    @user = User.find_by(:email => params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/listings'
    else
      redirect "/signup"
    end
  end

  #POST:/send the signup info to the server and let the user to create account
  post "/signup" do
    if params[:fname].empty? || params[:lname].empty? || params[:username].empty? || params[:email].empty? || params[:password].empty?
      redirect "/signup"
    else

      @user = User.create(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email], :password => params[:password])
      @user.save
      session[:user_id] = @user.id
      redirect "/listings/show"
    end
  end

  get "/signout" do
    if signed_in?
      session.destroy
      redirect "/signin"
    else
      redirect "/welcome"
    end
  end

  # GET: /users/5 show a user with specific id
  get "/users/:id/edit" do
    @user = User.find_by(id: session[:user_id])
    if @user
    erb :"/users/edit.html"
    else
      redirect "/signin"
    end
  end
  patch '/users/:id' do
    if signed_in?
      if params[:fname].empty?
        redirect "/listings/#{params[:id]}/edit"
      else
        @user = User.find_by_id(params[:id])
        if @user == current_user
          if @user.update(:fname => params[:fname], :lname => params[:lname], :username => params[:username], :email => params[:email])
            redirect to "/listings/#{@user.id}"
          else
          redirect to "/listings/#{@user.id}/edit"
          end
        else
          redirect to '/listings'
        end
      end
    else
      redirect '/signin'
    end
  end
end
