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

  describe 'GET /api/v1/breads/id' do
    it 'Consegue listar um bread especifico e retornar status 200?' do
      get :show, params: {id: @bread.id}
      expect(response.body).to include_json(name: 'massa fina')
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /api/v1/breads' do
    it 'Consegue criar um bread e retornar status 201?' do
      post :create, params: {bread: {name: 'frances', price: 'R$2,00'}, format: :json}
      expect(response.body).to include_json(name: 'frances')
      expect(response).to have_http_status(201)
    end
  end

  describe 'PATCH /api/v1/breads/id' do
    it 'Consegue atualizar um bread e retornar status 200?' do
      bread = Bread.last
      patch :update, params: {bread: {name: 'hamburger', price: 'R$3,00'}, id: bread.id}
      expect(response.body).to include_json(name: 'hamburger')
      expect(response).to have_http_status(200)
    end
  end

end