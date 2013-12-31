class InsightsController < ApplicationController

  def create
    @insight = Insight.new(insight_params)

    respond_to do |format|
      if @insight.save
        format.html { redirect_to root_path, notice: 'Your insight was successfully created.' }
      end
    end
  end

  private

    def insight_params
      params.require(:insight).permit(:content)
    end

end