# frozen_string_literal: true

require 'rails_helper'


RSpec.describe 'Users pages', type: :system do
    it 'ss' do
        visit home_path
        expect(page).to have_text('LR9')
    end
end

# testing PalindromsController
RSpec.describe Lr9cController, type: :controller do
  context 'res_array function check' do
    it 'returns correct array' do
      expect(Lr9cController.result_array(11)).to eq([0, 1, 5, 6])
      expect(Lr9cController.result_array(0)).to eq([0])
    end
  end

  describe 'GET index' do
    context 'check index(main) page' do
      it 'has a 200 status code' do
        get :index
        expect(response.status).to eq(200)
      end
    end
  end
end
