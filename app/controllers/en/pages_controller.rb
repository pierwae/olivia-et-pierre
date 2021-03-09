class En::PagesController < ApplicationController
  def home
    if params[:saved].nil?
      required_params = 'nil'
    else
      required_params = params.require(:saved)
    end
    @subscription = Subscription.new

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
end
