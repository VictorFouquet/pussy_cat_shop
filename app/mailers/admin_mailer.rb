class AdminMailer < ApplicationMailer
  default from: 'puspicatshop@gmail.com'

  def admin_mailer
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user


    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'http://monsite.fr/login'

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: 'puspicatshop@gmail.com', subject: 'Nouvelle vente !!')
  end
end
