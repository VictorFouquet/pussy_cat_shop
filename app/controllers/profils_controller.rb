class ProfilsController < ApplicationController
	before_action :authenticate_user!, only: [:index]
  def index # ce n'est pas une page index mais simplement une page static Profil 
  	@current_user = current_user
  	@items = Item.all
  end
end
