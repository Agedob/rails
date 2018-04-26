class MainController < ApplicationController
  def index
  end

  def signin
  end

  def secrets
    @secrets = Secret.all
  end

  def spare

  end

  def addsecret
    Secret.create(content: params[:text], user:User.find(current_user.id))
    redirect_to '/main/secrets'
  end

end
