# frozen_string_literal: true

require 'csv'

desc 'Import CSV file to the show db'

task import: :environment do
  Show.insert_all(shows_csv)
end

private

def shows_csv
  CSV.foreach('netflix_titles.csv', headers: true).map do |row|
    obj = row.to_h
    obj[:show_type] = obj.delete('type')
    obj
  end
end
