class InsightsController < ApplicationController
  before_action :set_insight, only: [:edit, :update, :destroy]

  def create
    insight = Insight.new(insight_params)

    if user_signed_in?
      insight.user_id = current_user.id
    end

    respond_to do |format|
      if insight.save
        format.html { redirect_to root_path, notice: 'Your insight was successfully created.' }
      else
        format.html { redirect_to root_path }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @insight.update(insight_params)
        format.html { redirect_to root_path, notice: 'Your insight was successfully updated.' }
      else
        format.html { redirect_to root_path }
      end
    end
  end

  def destroy
    @insight.destroy
    
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Your insight was successfully deleted.' }
    end
  end

  private

    def set_insight
      @insight = current_user.insights.find(params[:id])
    end

    def insight_params
      params.require(:insight).permit(:content)
    end

end