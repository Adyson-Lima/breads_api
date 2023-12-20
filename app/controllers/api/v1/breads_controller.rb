class Api::V1::BreadsController < ApplicationController

  before_action :set_bread, only: %i[] #show update destroy

  def index
    @breads = Bread.all 
    render json: @breads
  end

private

def set_bread
  @bread = Bread.find(params[:id])
end

def bread_params
  params.require(:bread).permit(:name, :price)
end

end