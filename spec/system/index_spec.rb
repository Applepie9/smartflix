# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    it 'contains Smartflix, titles' do
      get '/'

      expect(response.body).to include('Smartflix')
      expect(response.body).to include('Dick Johnson Is Dead')
    end

    it 'shows default 10 titles' do
      get '/'

      expect(response.body).to include('The Starling') # 10th
      expect(response.body).not_to include('Vendetta: Truth, Lies and The Mafia') # 11th
    end

    it 'shows only 3 titles' do
      get '/?limit=3'

      expect(response.body).to include('Ganglands') # 3rd
      expect(response.body).not_to include('Jailbirds New Orleans') # 4th
    end
  end
end
