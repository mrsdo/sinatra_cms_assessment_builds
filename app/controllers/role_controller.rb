# frozen_string_literal: true

# Roles
class RoleController < ApplicationController

  get "/roles" do
    @role = Role.all
    erb :"/roles/index"
  end

  # new
  get '/roles/new' do
    @role = Role.new
    erb :"/roles/new"
  end

  # create
  post '/roles' do
    @role = Role.create(params)
    redirect to "/roles/#{@role.id}"
  end

  # show
  get '/roles/:id' do
    @role = Role.find(params[:id])
    erb :"/roles/show"
  end

  # edit
  get '/roles/:id/edit' do
    @role = Role.find(params[:id])
    erb :"/roles/edit"
  end

  # update
  patch '/roles/:id' do
    @role = Role.find(params[:id])
    @role.update(:role_name => params[:role_name])
    redirect to "/roles/#{@role.id}"
  end

  # destroy
  delete '/roles/:id' do
    Role.destroy(params[:id])
    redirect to '/roles'
  end

  def destroy
    Role.destroy(params[:id])
    redirect to '/roles'
  end
end
