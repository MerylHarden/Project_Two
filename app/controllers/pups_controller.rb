class PupsController < ApplicationController
  def index
    @puppies = Pup.all
  end

  def new
    @puppy = Pup.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    @puppy = Pup.find(params[:id])
  end
end
