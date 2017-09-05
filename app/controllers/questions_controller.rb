class QuestionsController < ApplicationController

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
    @related_questions = @question.category.questions.order(created_at: :desc).page(params[:page]).limit(5)
  end

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
