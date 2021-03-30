# frozen_string_literal: true

require './config/environment'

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
    session.delete('user_id')
    redirect '/'
  end

  helpers do
    def current_user
      # memoization
      @current_user ||= User.find_by_id(session['user_id'])

    end

    def signed_in?
      !!current_user
    end


    def redirect_signed_in
      flash[:errors] = ["You are already logged in."] if signed_in?
      redirect "/users/show.html" if signed_in?
    end

    def redirect_if_not_signed_in
      flash[:errors] = ["You must be logged in."] unless signed_in?
      redirect "/users/signin.html" unless signed_in?
    end
  end

end
