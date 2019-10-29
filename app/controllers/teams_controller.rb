# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    # @teams = Team.order(:name)
    @teams = Team.paginate(page: params[:page])
  end

  def show
    @team = Team.find(params[:id])
  end
end
