class QboxController < ApplicationController
	def index
		@question = Question.order("RANDOM()").first
	end

end
