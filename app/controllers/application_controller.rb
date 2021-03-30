# frozen_string_literal: true

require './config/environment'
require 'sinatra/flash'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'ToDo_secret'
    register Sinatra::Flash
  end

  get '/' do
    erb :welcome
  end

  get '/search' do
    @listings = Listing.find_by(address: params['address'])
    erb :results
  end

  get '/logout' do
    redirect_if_not_logged_in
    # logout a user
    session.clear
    session.delete('user_id')
    redirect '/'
  end

  helpers do
    def signed_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by_id(session[:user_id])
    end

    def redirect_if_logged_in
      flash[:errors] = ["You are already logged in."] if signed_in?
      redirect "/users/show.html" if signed_in?
    end

    def redirect_if_not_logged_in
      flash[:errors] = ["You must be logged in."] unless signed_in?
      redirect "/users/signin.html" unless signed_in?
    end
  end

end
