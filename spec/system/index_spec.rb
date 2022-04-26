# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    it 'contains Smartflix' do
      get '/'

      expect(response.body).to include('Smartflix')
    end

    it 'contains movie titles' do
      get '/'

      expect(response.body).to include('Ganglands')
    end
  end
end
