require 'rails_helper'

RSpec.describe Bread, type: :model do

  before{@bread = Bread.new}

  describe 'Testes de preenchimento do model Bread' do

    it 'name consegue ser preenchido?' do
      @bread.name = 'pão de forma'
      expect(@bread.name).to eq('pão de forma')
    end

    it 'price consegue ser preenchido?' do
      @bread.price = 'R$12,00'
      expect(@bread.price).to eq('R$12,00')
    end

  end

  describe 'Testes de validacao do model Bread' do

    it 'objeto bread valido com campos obrigatorios preenchidos?' do
      @bread.name = 'centeio'
      @bread.price = 'R$7,00'
      expect(@bread).to be_valid
    end

    it 'objeto bread invalido com campos obrigatorios não preenchidos?' do
      bread = Bread.new
      expect(bread).to be_invalid
    end

  end

end