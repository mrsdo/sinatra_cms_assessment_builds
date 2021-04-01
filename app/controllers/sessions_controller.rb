class SessionsController < ApplicationController
    ## handles changing my session ie. login/logout

    # login route form
    get '/login' do
        redirect_if_logged_in
        # render form /login
        erb :'sessions/new'
    end

    # login route POST
    post '/login' do
        redirect_if_logged_in
        @user = User.find_by(email: params["user"]["email"])

        # If user is authenticated, log in, redirect /listings
        if @user && @user.authenticate(params["users"]["password"])
            session["user_id"] = user.id
            redirect "/listings/show.html"
        # If user not valid, send back to /login
        else
            redirect "/login"
        end
    end

    # logout DELETE (get/post - in Application Controller)

end