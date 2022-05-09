# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    let(:shows) { create_list(:show, 15) }

    it 'contains Smartflix' do
      shows
      get '/'

      expect(response.body).to include('Smartflix')
    end

    it 'shows default 12 titles' do
      shows
      get '/'

      expect(response.body).to include('Show_12')
      expect(response.body).not_to include('Show_13')
    end

    it 'shows only 3 titles' do
      shows
      get '/?limit=3'

      expect(response.body).to include('Show_3')
      expect(response.body).not_to include('Show_4')
    end
  end
end
