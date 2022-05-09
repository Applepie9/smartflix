# frozen_string_literal: true

require 'csv'

desc 'Import CSV file to the show db'

task import: :environment do
  Show.insert_all(shows_csv)
end

private

def shows_csv
  CSV.foreach('netflix_titles.csv', headers: true).map do |row|
    {
      show_type: row['type'],
      title: row['title'],
      director: row['director'],
      cast: row['cast'],
      country: row['country'],
      date_added: row['date_added'],
      release_year: row['release_year'],
      rating: row['rating'],
      duration: row['duration'],
      listed_in: row['listed_in'],
      description: row['description']
    }
  end
end
