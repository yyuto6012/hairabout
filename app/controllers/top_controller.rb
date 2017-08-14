class TopController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc).page(params[:page]).limit(5)
    artist_ids = Answer.group(:artist_id).order('count_artist_id DESC').limit(5).count(:artist_id).keys
    @artists = artist_ids.map{ |id| Artist.find(id) }
    @liked_questions = Question.order(want_count: :desc).limit(5)
  end
end
