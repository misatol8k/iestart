class MatchingsController < ApplicationController
  def index
    @specialists = Specialist.all
  end

  def show
  end
end
