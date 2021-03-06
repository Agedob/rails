class SessionsController < ApplicationController


  def create
    @error = User.create(form_param).errors.full_messages
      if @error.length > 0
        flash[:error] = @error
        redirect_to root_url
      else
        session[:user_id] = User.find_by_email(form_param[:email]).id
        redirect_to '/main/secrets'
      end
    end

  def login
      # Log User In
      if !(User.find_by_email(params[:email]).try(:authenticate, params[:password])).nil?
        session[:user_id] = User.find_by(email: params[:email]).id
        puts session[:user_id]
        redirect_to '/main/secrets'
      else
        redirect_to '/main/signin'
      end
        # if 
          # save user id to session
          # redirect to users profile page
      # if authenticate false
          # add an error message -> flash[:errors] = ["Invalid"]
          # redirect to login page
  end
  def destroy
    reset_session
    redirect_to '/'
  end

  private
    def form_param
      params.require(:form).permit(:name, :email, :password, :password_confirmation)
    end

end