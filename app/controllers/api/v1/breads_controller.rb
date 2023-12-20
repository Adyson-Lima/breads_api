class Api::V1::BreadsController < ApplicationController

  before_action :set_bread, only: %i[show update] #show update destroy

  def index
    @breads = Bread.all 
    render json: @breads
  end

  def show
    render json: @bread
  end

  def create
    @bread = Bread.new(bread_params)
    if @bread.save
      render json: @bread, status: :created, location: api_v1_bread_url(@bread)
    else
      render json: @bread.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bread.update(bread_params)
      render json: @bread
    else
      render json: @bread.errors, status: :unprocessable_entity
    end
  end

private

def set_bread
  @bread = Bread.find(params[:id])
end

def bread_params
  params.require(:bread).permit(:name, :price)
end

end