# frozen_string_literal: true

# User Controller
class UsersController < ApplicationController
  get '/users/:id' do
    if find_user
      erb :'users/show.html'
    else
      redirect '/signup'
    end
  end

  private

  def find_user
    @user = User.find_by_id(params[:id])
  end
end
