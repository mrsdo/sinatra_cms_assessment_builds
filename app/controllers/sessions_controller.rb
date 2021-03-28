class SessionsController < ApplicationController
    ## handles changing my session ie. login/logout

    # IF LOGGED IN, DON'T SHOW LOGIN


    # login route form
    get '/login' do
        redirect_if_logged_in
        # render form
        erb :'sessions/new'
    end

    # login route POST
    post '/login' do
        redirect_if_logged_in
        # take data find User
        @user = User.find_by(email: params["user"]["email"])

        # if that user is authenticate, log in, redirect /movies
        if @user && @user.authenticate(params["users"]["password"])
            session["user_id"] = user.id
            redirect "/listings/show.html"
        # if user not valid, send back to /login
        else
            redirect "/login"
        end
    end

    # logout DELETE (get/post)

end