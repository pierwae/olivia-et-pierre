class En::SubscriptionsController < ApplicationController
  def create
    required_params = params.require(:subscription).permit(:first_name,
                                                           :last_name,
                                                           :email,
                                                           :language)
    subscription = Subscription.new(required_params)
    SubscriptionMailer.with(subscription: subscription, language: required_params[:language]).send_data.deliver_later if subscription.save
    redirect_to "/en/?saved=#{subscription.save}#first"
  end
end
