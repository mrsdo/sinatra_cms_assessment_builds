# frozen_string_literal: true

# Listings
class ListingsController < ApplicationController


  # READ all listings
  get '/listings' do

    redirect_if_not_logged_in
    @listings = current_user.listings
    # @user = User.find(session[:user_id])
    # @listings = Listing.where(user_id: current_user)
    erb :'listings/index.html'
  end

  get '/listings/view-listings' do
    @listings = Listing.all
    erb :'listings/view-listings'
  end

  # CREATE new listing (render form)
  get '/listings/new' do
    redirect_if_not_logged_in
    erb :'listings/new.html'
  end

  # READ 1 listing
  get '/listings/:id' do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    erb :'listings/show.html'
  end

  # CREATE new listing (save in db)
  # create
  post '/listings' do
    listing = Listing.create(params["listing"])
    # listing = Listing.new(params["listing"])
    if listing.save
      redirect to "/listings/#{listing.id}"
    else
      redirect "listings/new.html"
    end

  end

  # UPDATE 1 listing (render form)
  get '/listings/:id/edit' do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    erb :'listings/edit.html'
  end

  # UPDATE 1 listing (save in db)
  patch '/listings/:id' do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    if @listing.update(params["listing"])
      redirect "listings/#{@listing.id}"
    else
      redirect "listings/#{@listing.id}/edit"
    end
  end

  # DELETE 1 listing
  delete "/listings/:id" do
    redirect_if_not_logged_in
    redirect_if_not_authorized

    @listing.destroy

    redirect "/listings"
  end

  private

  def redirect_if_not_authorized
    @listing = Listing.find_by_id(params[:id])
    if @listing.user_id != session["user_id"]
      redirect "/listings"
    end
  end


end
