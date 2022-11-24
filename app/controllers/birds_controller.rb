class BirdsController < ApplicationController

  wrap_parameters format: []
  # GET /birds
  def index
    birds = Bird.all
 def index

  # POST /birds
  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    bird = Bird.create(bird_params)
    render json: bird, status: :created
  end

def show
    end
  end

  private

  def bird_params
    params.permit(:name, :species)
  end

end