# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    it 'contains Smartflix, titles' do
      get '/'

      expect(response.body).to include('Smartflix')
    end

    it 'shows default 12 titles' do
      get '/'

      expect(response.body).to include('Bangkok Breaking') # 12th
      expect(response.body).not_to include('Je Suis Karl') # 13rd
    end

    it 'shows only 3 titles' do
      get '/?limit=3'

      expect(response.body).to include('Ganglands') # 3rd
      expect(response.body).not_to include('Jailbirds New Orleans') # 4th
    end
  end
end
