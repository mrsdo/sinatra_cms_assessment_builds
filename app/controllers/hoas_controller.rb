class HoasController < ApplicationController

  # GET	/hoas(.:format)	hoas#index
  # Read
  get '/hoas' do
    @hoas = Hoa.all
    erb :"/hoas/index.html"
  end

  # Create new hoa (show new hoa form)
  # new
  get '/hoas/new' do
    erb :"/hoas/new.html"
  end


  # create new movie (saved to database)
  post '/hoas' do
    # hoa = Hoa.new(params)
    hoa = Hoa.create(:contact => params[:contact], :phone => params[:phone])
    # hoa = Hoa.new(contact: params["contact"])
    if hoa.save
      redirect "/hoas/#{@hoa.id}/show.html"
    else
      puts "error" # redirect to flash message
    end
  end


  # Read 1 HOA
  # show
  get '/hoas/:id' do
    @hoa = Hoa.find_by(params[:id])
    erb :"/hoas/show.html"
  end
  
  # Details
  get '/hoas/:id/show' do
    @hoa = Hoa.find(params[:id])
    erb :"/hoas/show.html"
  end

  # edit
  get '/hoas/:id/edit' do
    @hoa = Hoa.find(params[:id])
    erb :"/hoas/edit.html"
  end

  # update
  patch '/hoas/:id' do
    @hoa = Hoa.find(params[:id])
    @hoa.update(params[:hoas])
    redirect to "/hoas/#{@hoa.id}"
  end

  # destroy
  delete '/hoas/:id' do
    Hoa.destroy(params[:id])
    redirect to '/hoas'
  end

  def destroy
    Hoa.destroy(params[:id])
    redirect to '/hoas'
  end


end
