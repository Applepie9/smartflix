# frozen_string_literal: true

require 'csv'

module WelcomeHelper
  def titles_csv_import
    CSV.foreach('netflix_titles.csv', headers: true, header_converters: :symbol)
  end
end
