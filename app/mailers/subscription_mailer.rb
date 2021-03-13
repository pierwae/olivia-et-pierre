class SubscriptionMailer < ApplicationMailer
  def send_data
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
    @language   = params[:language]
    mail(to: ENV['ZAPIER_SUBSCRIPTION'], subject: "Inscription de #{@first_name} #{@last_name}")
  end
end
