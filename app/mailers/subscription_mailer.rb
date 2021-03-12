class SubscriptionMailer < ApplicationMailer
  def send_data
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
    mail(to: '0xnyut24subscriptions@robot.zapier.com', subject: "Inscription de #{@first_name} #{@last_name}")
  end
end
