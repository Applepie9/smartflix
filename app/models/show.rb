# frozen_string_literal: true

class Show < ApplicationRecord
  validates :show_type, :title, :release_year, :show_id, presence: true

  enum show_type: { Movie: 0, 'TV Show': 1 }
end
