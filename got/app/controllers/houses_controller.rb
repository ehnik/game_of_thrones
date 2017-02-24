class HousesController < ApplicationController

def index
    @houses = House.all
end

def show
  @house = House.find(params[:id])
  @new_id = params[:new_house_id]
end

def new
  @house = House.new
end

def delete
  @house = House.new
end

def create
  @house = House.create(house_params)
  redirect_to houses_path
end

def edit
  @house = House.find(params[:house_id])
  @houses = House.all
  @character = Character.find(params[:id])
end

def update
  @house = House.find(params[:house_id])
  @character = Character.find(params[:character_id])
  @character.update(house_id: params[:house_id])
  redirect_to house_path
end

private
def house_params
  params.require(:house).permit!
end

end
