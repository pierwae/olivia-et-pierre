class ResponseMailer < ApplicationMailer
  def send_data
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
    @presence   = params[:presence]
    @allergies  = params[:allergies]
    @note       = params[:note]
    @language   = params[:language]
    mail(to: ENV['ZAPIER_RESPONSE'], subject: "Réponse de #{@first_name} #{@last_name}")
  end
end
