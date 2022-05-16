# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Show, type: :model do
  describe 'validations' do
    subject { build(:show) }

    it { should validate_presence_of(:show_id) }

    it { should validate_presence_of(:title) }

    it { should validate_presence_of(:release_year) }

    it { should validate_presence_of(:show_type) }
    it { should define_enum_for(:show_type) }
  end
end
