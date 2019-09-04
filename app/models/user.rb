class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sales
  has_many :items, through: :sales, foreign_key: "user_id"
	has_one :cart
  after_create :welcome_user_email

  def welcome_user_email
    WelcomeUserMailer.welcome_user_email(self.user).deliver_now
  end

end
