# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    before { create_list(:show, 15) }

    it 'contains Smartflix' do
      get '/'

      expect(response.body).to include('Smartflix')
      expect(response.body).to include('Show_1')
    end

    it 'shows default 12 titles' do
      get '/'

      expect(response.body).to include('showcard-title').exactly(12).times
    end

    it 'shows only 3 titles' do
      get '/?limit=3'

      expect(response.body).to include('showcard-title').exactly(3).times
    end
  end
end
