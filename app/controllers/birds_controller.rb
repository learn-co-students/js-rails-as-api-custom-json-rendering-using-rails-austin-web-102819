class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
 
  
  
  
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: { id: bird.id, name: bird.name, species: bird.species }
    else
      render json: { message: 'Bird not found' }
    end
  end
  
  
  
  
  
  
  
  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: birds, only: [:id, :name, :species]
  #   # render json: birds, except: [:created_at, :updated_at]
  #   # render json: {id: bird.id, name: bird.name, species: bird.species } 
  #   # render json: bird.slice(:id, :name, :species)
  #   # 4 different ways to do the same thing, .slice creates a new hash with just the keys we pass in 
  # end
end