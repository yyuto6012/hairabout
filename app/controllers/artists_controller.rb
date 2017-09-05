class ArtistsController < ApplicationController
  def index
    artist_ids = Answer.group(:artist_id).order('count_artist_id DESC').count(:artist_id).keys
    @artists = artist_ids.map{ |id| Artist.find(id) }
  end

  def show
    @artist = Artist.find_by(params[:hash_id])
  end

end
