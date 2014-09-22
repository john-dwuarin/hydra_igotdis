class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def show
    begin
      @tournament = Tournament.find(params[:id])
      @rounds = @tournament.rounds
      @round_type_to_show = params[:round_type]
    rescue ActiveRecord::RecordNotFound
      redirect_to root_url
    end
  end

end