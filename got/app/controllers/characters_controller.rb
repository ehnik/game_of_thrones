class CharactersController < ApplicationController

def index
    @characters = Character.all
    @houses = House.all
end

def show
  @house = House.find(params[:house_id])
  @character = Character.find(params[:id])
end

def edit
  @house = House.find(params[:house_id])
  @houses = House.all
  @character = Character.find(params[:id])
end

def update
  @character = Character.find(params[:id])
  @character.update!(name: params[:name], house_id: params[:new_house_id])
  redirect_to characters_path
end

#def update_char
#  @house = House.find(params[:house_id])
#  @character = Character.find(params[:id])
#  @character.update!(house_id: params[:new_house_id])
#  redirect_to characters_path
#end




def destroy
  @character = Character.find(params[:id])
  @character.destroy!
  redirect_to house_path
end

def destroy_char
  @character = Character.find(params[:id])
  @character.destroy!
  redirect_to characters_path
end

def new
  @character = Character.new
  @characters = Character.all
  @houses = House.all
end

def create
  Character.create!(name: params[:name], house_id: params[:house_id])
  redirect_to characters_path
end

private
def character_params
  params.require(:character).permit!
end

private
def house_params
  params.require(:house).permit!
end

end
