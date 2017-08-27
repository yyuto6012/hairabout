class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    unless @question.save
      render :new
    end
  end

  private
  def question_params
    params.require(:question).permit(:title, :text, :user_id, :category_id)
  end

end
