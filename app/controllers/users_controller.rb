# frozen_string_literal: true

class UsersController < ApplicationController
  ## handle signup as well as editing or deleting a user account

  # IF LOGGED IN, DON'T SHOW SIGNUP

  # signup route FORM
  get '/signup' do
    redirect_if_logged_in
    erb :"users/new"
  end

  # signup route POST
  post '/signup' do
    redirect_if_logged_in
    take data create a new User
    redirect '/signup' if User.find_by(email: params['user']['email'])
    if user = User.create(params['user'])
      user = User.new(params['user'])
      if user.save
        session['user_id'] = user.id
        redirect '/listings'
      else
        redirect '/signup'
      end
    end
  end
end
