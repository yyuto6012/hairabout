class TopController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).limit(5)
  end
end
