class SubcriptionsController < ApplicationController

  def create
    @subscription = Subcription.new(build_params)
    respond_to do |format|
      if @subscription.save

        HashtagMailer.send_signup_email(@subscription).deliver

        format.html { redirect_to subcriptions_index_path}
        format.json { render :index, status: :created, location: subscription }
      else
        format.html {render 'index'} ## Specify the format in which you are rendering "new" page
        format.json {render json: @subscription.errors} ## You might want to specify a json format as well
      end
    end


  end
  def index
    @subscription = Subcription.new
  end

  private

  def build_params
    params.require(:subcription).permit(:tag,
                                        :email)
  end
end
