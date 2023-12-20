require 'rails_helper'

RSpec.describe Bread, type: :model do

  before{@bread = Bread.new}

  describe 'Testes de preenchimento do model Bread' do

    it 'name consegue ser preenchido?' do
      @bread.name = 'pão de forma'
      expect(@bread.name).to eq('pão de forma')
    end

  end

end