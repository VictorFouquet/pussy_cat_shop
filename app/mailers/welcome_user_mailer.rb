class WelcomeUserMailer < ApplicationMailer
  default from: 'puspicatshop@gmail.com'

  def welcome_user_emails(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://pussycat.herokuapp.com/'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Welcome to PussyCat')
  end
end
