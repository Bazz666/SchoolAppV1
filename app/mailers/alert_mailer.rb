class AlertMailer < ActionMailer::Base

    def alert_user(user)
        
        @users = User.all
        emails = @users.collect(&:email).join(", ")

        mail to: emails, subject: "Bienvenido", from: "schoolapp.mailer@gmail.com", body: "Haz sido agregado a un nuevo curso!"
    end 
end