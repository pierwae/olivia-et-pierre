class SubscriptionMailer < ApplicationMailer
  def send_data
    subscription = params[:subscription]
    @first_name = subscription.first_name
    @last_name  = subscription.last_name
    @email      = subscription.email
    @language   = params[:language]
    mail(to: ENV['ZAPIER_SUBSCRIPTION'], subject: "Inscription de #{@first_name} #{@last_name}")
  end
end
