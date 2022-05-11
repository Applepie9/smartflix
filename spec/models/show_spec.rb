# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Show, type: :model do
  describe 'show model' do

    it 'creates a valid show' do
      show = create(:show)
      expect(show).to be_valid
    end

    it 'has a title' do
      show = described_class.new(title: nil)
      expect(show).not_to be_valid
    end

    it 'has a release_year' do
      show = described_class.new(release_year: nil)
      expect(show).not_to be_valid
    end

    it 'has a show_type' do
      show = described_class.new(show_type: nil)
      expect(show).not_to be_valid
    end

    it 'has a show_id' do
      show = described_class.new(show_id: nil)
      expect(show).not_to be_valid
    end
  end
end
