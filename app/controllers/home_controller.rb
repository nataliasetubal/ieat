class HomeController < ApplicationController
  def index
    return @email = current_user.email if user_signed_in?

    redirect_to :controller => 'devise/sessions', :action => 'new'
  end
end
