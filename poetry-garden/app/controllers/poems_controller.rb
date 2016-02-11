class PoemsController < ApplicationController

  def show
    @poem = Poem.find_by(id: params[:id])
  end
end
