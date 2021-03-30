# frozen_string_literal: true

class SessionsController < ApplicationController
  get '/signup' do
    redirect_if_not_signed_in
    erb :'sessions/signup'
  end

  post '/signup' do
    user = User.new(params[:user])
    if user.save
      session[:user_id] = user.id
      redirect '/listings'
    else
      redirect '/signup'
    end
  end

  get '/signin' do
    redirect_if_not_signed_in
    erb :'sessions/signin'
  end

  post '/signin' do
    user = User.find_by_username(params[:user][:username])
    if user&.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/listings'
    else
      redirect '/signin'
    end
  end

  get '/logout' do
    session.clear
    redirect '/signin'
  end
end
