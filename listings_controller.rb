class ListingsController < ApplicationController

  # GET: NOT LOGGED IN
  get "/listings/view-listings" do
    @listing = Listing.all
    erb :"/listings/view-listings"
  end

  # GET: /listings asking the server for the data in listing -- done
  get "/listings" do
    # if the user is signed in?
    if signed_in? == true
      # then find the user who's session params = to user_id
      @user = User.find(session[:user_id])
      # finally disply the listing list where user_id = to current user

        @listings = Listing.where(user_id: current_user)
        # binding.pry
        erb :"listings/show.html"

      else

      redirect "/signin"
      end
  end

  # GET: /listings/new -- done
  get "/listings/new" do
    if signed_in?
      @user = User.find_by(id: session[:user_id])
      erb :"/listings/new.html"
    else
      redirect "/signin"
    end
  end

  # POST: /listings --- done
  post "/listings" do
    # raise params.inspect
    #params {"name"=>"raise params inspect"}
    if signed_in?
      @user = User.find(session[:user_id])
      # binding.pry

      if params[:name].empty?
        puts 'Please complete all fields'
        redirect "/signup"
      else
        @user = User.find_by(:id => session[:user_id])
        # create new instance of listing
        # @listing = Listing.new
        @listing = Listing.create(:name => params[:name], :tag_name => params[:tag_name], :asking_price => params[:asking_price], :bedrooms => params[:bedrooms], :status => params[:status], :bathrooms => params[:bathrooms], :first_listed => params[:first_listed], :sqft => params[:sqft], :summary.to_s => params[:summary.to_s])
        # @listing.user_id = @user.id
        @listing.save
        redirect "/listings"
      end
    else
      redirect "/signin"
    end
  end
  get '/listings/:id' do
    if signed_in?
      # @user = User.find_by(id: session[:user_id])
      @listing = Listing.find(params[:id])
      if @listing && @listing.user == current_user
      # binding.pry
      erb :'/listings/show.html'
    else
      redirect "/signin"
    end
    else
      redirect '/signin'
    end
  end
  # GET: /listings/5
  get "/listings/:id/edit" do
    @user = User.find_by(id: session[:user_id])
    @listing = Listing.find(params[:id])
    if @listing && @listing.user == current_user

    # there is no relation between this line and line 37 it just bcz of redirecting due to design
    # those two values are the end up equals
    erb :"/listings/edit.html"
    else
      redirect "/listings/show"
    end
  end
  patch '/listings/:id' do
    if signed_in?
      if params[:name].empty?
        redirect "/listings/#{params[:id]}/edit"
      else
        @listing = Listing.find_by_id(params[:id])
        if @listing && @listing.user == current_user
          # if @listing.update(:name => params[:name])
          if @listing.update(:name => params[:name], :tag_name => params[:tag_name], :asking_price => params[:asking_price], :bedrooms => params[:bedrooms], :status => params[:status], :bathrooms => params[:bathrooms], :first_listed => params[:first_listed], :sqft => params[:sqft], :summary.to_s => params[:summary.to_s])
            redirect to "/listings/#{@listing.id}"
          else
          redirect to "/listings/#{@listing.id}/edit"
          end
        else
          redirect to '/listings'
        end
      end
    else
      redirect '/signin'
    end
  end

  delete '/listings/:id/delete' do
   if signed_in?
     @user = User.find_by(id: session[:user_id]) if session[:user_id]
     @listing = Listing.find_by_id(params[:id])
     # binding.pry
     if @listing && @listing.user == current_user
       @listing.delete
       redirect '/listings'
     end
   else
     redirect to '/signin'
   end
  end


end
