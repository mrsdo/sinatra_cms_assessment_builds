class SessionsController < ApplicationController
    ## handles changing my session ie. login/logout

    # login route form
    get '/signin' do
        redirect_if_not_logged_in
        erb :'/signin'
    end

    # login route POST
    post '/signin' do
        redirect_if_not_logged_in
        @user = User.find_by(email: params["user"]["email"])
        if @user && @user.authenticate(params["users"]["password"])
            session["user_id"] = user.id
            redirect "/listings/show.html"
        else
            redirect "/users/signin"
        end
    end
    # GET: /let the user to go for the sign-in page --done
    get "/signin" do
        redirect_if_not_logged_in
        redirect '/listings'
    end

    # GET: /let the user go for the sign-up page --done
    get "/signup" do
        redirect_if_not_logged_in
        redirect '/users/new.html'
    end


end