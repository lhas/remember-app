class PagesController < ApplicationController

	def index
		if user_signed_in?
      @user_insights = Insight.where("user_id = ?", current_user.id).order(created_at: :asc)

      @insight = Insight.new
    end
	end

	def contact
		
	end

end