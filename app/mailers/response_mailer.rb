class ResponseMailer < ApplicationMailer
  def send_data
    response    = params[:response]
    @first_name = response.first_name
    @last_name  = response.last_name
    @email      = response.email
    @presence   = response.presence
    @allergies = response.allergies.empty? ? 'none' : response.allergies
    @note = response.note.empty? ? 'none' : response.note
    @language = params[:language]
    mail(to: ENV['ZAPIER_RESPONSE'], subject: "Réponse de #{@first_name} #{@last_name}")
  end
end
