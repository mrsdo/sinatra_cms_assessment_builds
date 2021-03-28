# frozen_string_literal: true

# Listings
class ListingsController < ApplicationController


  get "/listings" do
    @listing = Listing.find_by_id(params[:id])
    @listing = Listing.all
    erb :"/listings/index.html"
  end

  # new
  get '/listings/new' do
    @listing = Listing.new
    erb :"/listings/new.html"
  end

  # create
  post '/listings' do
    @listing = Listing.create(params)
    listing = Listings.new(object: params['item'])
    if listing.save
      redirect to "/listings/#{@listing.id}"
    else
      redirect "listings/new.html"
    end

  end

  # show
  get '/listings/:id' do
    @listing = Listing.find(params[:id])
    erb :"/listings/show.html"
  end

  # edit
  get '/listings/:id/edit' do
    @listing = Listing.find_by_id(params[:id])
    erb :"/listings/edit.html"
  end

  # update 1
  patch '/listings/:id' do
    listing = Listing.find_by_id(params[:id])
    listing.update(params[:listings])

    if listing.save
      redirect to "/listings/#{listing.id}"
    else
      redirect "listings/#{listing.id}/edit"
    end
  end

  # destroy 1
  delete '/listings/:id' do
    listing = Listing.find_by_id(params[:id])
    Listing.destroy(params[:id])
    redirect to '/listings'
  end

  def destroy
    Listing.destroy(params[:id])
    redirect to '/listings'
  end
end
