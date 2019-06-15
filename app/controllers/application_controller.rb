class ApplicationController < ActionController::Base


  #you need to be an authenticated user
  before_action :authenticate_user!

end
