class ResponsesController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def new
    if params[:saved].nil?
      required_params = 'nil'
    else
      required_params = params.require(:saved)
    end
    @response = Response.new

    case required_params
    when 'nil'
      @success = 'hidden'
      @error   = 'hidden'
    when 'true'
      @success = ''
      @error   = 'hidden'
    when 'false'
      @success = 'hidden'
      @error   = ''
    end
  end

  def create
    required_params = params.require(:response).permit(:first_name,
                                                       :last_name,
                                                       :email,
                                                       :presence,
                                                       :note,
                                                       :allergies,
                                                       :language)
    response = Response.new(required_params)
    response.presence = required_params[:presence] == 'Nous serons présents lors de la soirée !'
    ResponseMailer.with(response: response, language: required_params[:language]).send_data.deliver_later if response.save
    redirect_to "/fiesta?saved=#{response.save}#first"
  end
end
