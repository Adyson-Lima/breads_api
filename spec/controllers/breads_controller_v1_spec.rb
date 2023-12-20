require 'rails_helper'

RSpec.describe Api::V1::BreadsController, type: :controller do

  before{@bread = Bread.create(name: 'massa fina', price: 'R$5,00')}

  describe 'GET /api/v1/breads' do
    it 'Consegue listar todos os breads e retornar status 200?' do
      get :index
      expect(JSON.parse(response.body).size).to eq(1)
      expect(response).to have_http_status(200)
    end
  end

end