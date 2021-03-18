# frozen_string_literal: true

# Roles
class RoleController < ApplicationController
  # READ all roles
  get '/roles' do
    @roles = Role.all
    erb :'roles/index'
  end

  # CREATE new role (render form)
  get '/roles/new' do
    erb :'roles/new'
  end

  # READ 1 role
  get '/roles/:id' do
    @roles = Role.find_by_id(params[:id])
    erb :'roles/show'
  end

  # CREATE new role (save in db)
  post '/roles' do
    role = Role.new(title: params['title'])

    if Role.save
      redirect "/roles/#{Role.id}"
    else
      redirect '/roles/new'
    end
  end

  # UPDATE 1 role (render form)
  get '/roles/:id/edit' do
    @roles = Role.find_by_id(params[:id])
    erb :'roles/edit'
  end

  # UPDATE 1 role (save in db)
  patch '/roles/:id/edit' do
    @role = Role.find_by_id(params[:id])
    Role.role_name = params['role_name']

    if Role.save
      redirect "/roles/#{Role.id}/updated"
    else
      redirect "/roles/#{Role.id}"
    end
  end

  # DELETE 1 role
  delete '/roles/:id' do
    @role = Role.find_by_id(params[:id])
    redirect '/roles'
  end
end
