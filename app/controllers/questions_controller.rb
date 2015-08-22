class QuestionsController < ApplicationController

	def index
		@question = Question.order("RANDOM()").first
	end


	def new
  		@question = Question.new
  	end

  	def create
  		 @question = Question.create(question_params)
  		if @question.valid?
  			redirect_to root_path
  		else
    		render :new, :status => :unprocessable_entity
  		end

  	end


  	private

  	def question_params
   	 params.require(:question).permit(:category, :questiontext)
  	end


end
