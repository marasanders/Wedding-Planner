class SessionsController < ApplicationController
  # NHO: nice job rolling your own User Auth!
    def new
      @user = User.new
    end

    def create
      input_username = params[:user][:username]
      if User.exists?(username: input_username)
        @user = User.find_by(username: input_username)
        if @user.password === params[:user][:password]
          flash.now[:notice] = "You're signed in!"
          session[:user_id] = @user.id
          @guest =  @user.guests
          redirect_to guests_path(@guest)
        else
          puts "Wrong password!" # NHO: these won't display to the user, I think you want a flash notification here
          redirect_to new_session_path
        end
      else
        puts "That user doesn't exist!" # NHO: these won't display to the user, I think you want a flash notification here
        redirect_to new_session_path
      end
    end

    def destroy
      reset_session
      puts "You're signed out!" # NHO: these won't display to the user, I think you want a flash notification here
      redirect_to :root
    end

end
