class ResponseMailer < ApplicationMailer
  def send_data
    @first_name = response.first_name
    @last_name  = response.last_name
    @email      = response.email
    @presence   = response.presence
    @allergies  = response.allergies
    @note       = response.note
    @language   = response.language
    mail(to: ENV['ZAPIER_RESPONSE'], subject: "Réponse de #{@first_name} #{@last_name}")
  end
end
