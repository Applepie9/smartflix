# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index', type: :system do
  describe 'index page' do
    it 'contains smartflix' do
      get '/'

      expect(response.body).to include('Smartflix')
    end
  end
end
