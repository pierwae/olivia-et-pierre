class SubscriptionsController < ApplicationController
  def create
    required_params = params.require(:subscription).permit(:first_name,
                                                           :last_name,
                                                           :email,
                                                           :language)
    subscription = Subscription.new(required_params)
    SubscriptionMailer.with(required_params).send_data.deliver_later if subscription.save
    redirect_to "/?saved=#{subscription.save}#first"
  end
end
