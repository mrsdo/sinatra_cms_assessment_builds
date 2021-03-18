# frozen_string_literal: true

class ListingsController < ApplicationController
  # Add Routes
  # Add Models
  # Add Views
  # Run Migration
  # Use Tux validate db objects access, CRUD functionality

  get "/listings" do
    # user is signed in?
    if signed_in? == true
      # user's session params = to user_id
      @user = User.find(session[:user_id])
      # Listings for current user_id = to current user
      @listings = Listing.where(user_id: current_user)
      # binding.pry
      erb :"listings/show.html"
    else
      redirect "/signin"
    end
  end

  # GET: NOT LOGGED IN
  get '/listings/view-listings' do
    @listing = Listing.all
    erb :"/listings/view-listings"
  end

  # GET: Get Listings Details
  get '/listings/:id/details' do
    #
    # ToDo: add viewer control feature where user can view based on role and/or group (paid listings membership)
    #
    @listing = Listing.find(params[:id])
    erb :"/listings/details.html"
  end

  # new
  get '/listings/new' do
    @listings = Listing.new
    erb :"/listings/new.html"
  end

  # create
  post '/listings' do
    @listing = Listing.create(params)
    redirect to "/listings/#{@listing.id}"
  end

  # show
  get '/listings/:id' do
    @listing = Listing.find(params[:id])
    erb :"/listings/show.html"
  end

  # edit
  get '/listings/:id/edit' do
    @listing = Listing.find(params[:id])
    erb :"/listings/edit.html"
  end

  # update
  patch '/listings/:id' do
    @listing = Listing.find(params[:id])
    @listing.update(:address => params[:address], :hoa => params[:hoa],
                    :asking_price => params[:asking_price], :bedrooms => params[:bedrooms],
                    :status => params[:status], :bathrooms => params[:bathrooms],
                    :first_listed => params[:first_listed], :sqft => params[:sqft],
                    :summary.to_s => params[:summary.to_s])
    redirect to "/listings"
  end

  # destroy
  delete '/listings/:id' do
    Listing.destroy(params[:id])
    redirect to '/listings'
  end

  def destroy
    Listing.destroy(params[:id])
    redirect to '/listings'
  end
end
