class ListingsController < ApplicationController
  # Add Routes
  # Add Models
  # Add Views
  # Run Migration
  # Use Tux validate db objects access, CRUD functionality

  get "/listings" do
    binding.pry
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
    @listing.update(:name => params[:name], :tag_name => params[:tag_name],
                    :asking_price => params[:asking_price], :bedrooms => params[:bedrooms],
                    :status => params[:status], :bathrooms => params[:bathrooms],
                    :first_listed => params[:first_listed], :sqft => params[:sqft],
                    :summary.to_s => params[:summary.to_s])
    redirect to "/listings/#{@listing.id}"
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
