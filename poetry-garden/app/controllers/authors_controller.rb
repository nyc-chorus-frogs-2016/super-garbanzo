class AuthorsController < ApplicationController

  def index
    @authors = Author.order(:last_name)
  end

  def show
    @author = Author.find_by(id: params[:id])
  end

  #need new, create, edit & update
end
