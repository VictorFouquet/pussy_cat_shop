class Sale < ApplicationRecord
	belongs_to :user
	belongs_to :item
	  after_create :sale_mail


	def sale_mail
	    UserMailer.welcome_email(self.user).deliver_now
		  AdminMailer.admin_mailer(self.user).deliver_now
	  end
end
