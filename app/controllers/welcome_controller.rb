class WelcomeController < ApplicationController

  #what this means is that skip the before action,  to perform on all of my controllers - to skip it for my welcome controller index action
  skip_before_action :authenticate_user!, only: [:index]

  def index
  end
end
