class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  def create
    @subscription = Subscription.new(build_params)
    respond_to do |format|
      if @subscription.save

        HashtagMailer.tag_promotion(subscription: params[:subscription]).deliver

        format.html { redirect_to subscriptions_index_path}
        format.json { render :index, status: :created, location: subscription }
      else
        format.html {render 'index'} ## Specify the format in which you are rendering "new" page
        format.json {render json: @subscription.errors} ## You might want to specify a json format as well
      end
    end


  end
  def index
    @subscription = Subscription.new
  end

  private

  def build_params
    params.require(:subscription).permit(:tag,
                                        :email)
  end
end
