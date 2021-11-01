class AlertMailer < ActionMailer::Base

    def alert_user(user)
        @user = user
        mail to: user.email, subject: "Bienvenido", from: "schoolapp.mailer@gmail.com", body: "Haz sido agregado a un nuevo curso!"
    end 
end