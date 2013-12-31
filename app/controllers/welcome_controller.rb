class WelcomeController < ApplicationController

	def index
		if user_signed_in?
      @user_insights = Insight.find_by(user_id: current_user.id)
    end
	end

	def contact
		
	end

end