class TripleOneEmailMailer < ApplicationMailer
    default from: Rails.application.secrets.email_user_name

    def decision_email(update_case)
        @update_case = update_case
        # byebug
        # text = "Triple One have looked into your case, and have advised you to #{update_case.decision}"
        # mail(to: `#{update_case.email}`, subject:"Your case has been updated")
        mail(to: "charliepayne1101@gmail.com", subject: "Triple One Decision")
    end
    
end
