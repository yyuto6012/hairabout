class TopController < ApplicationController
  @questions = Question.order(:created_at)
end
