class ProfilsController < ApplicationController
	before_action :authenticate_user!, only: [:secret]
  def index
  	@current_user = current_user
  end
end
