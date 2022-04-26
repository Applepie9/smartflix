# frozen_string_literal: true

require 'csv'

class WelcomeController < ApplicationController
  def index
    @shows ||= CSV.parse(File.read('netflix_titles.csv'), headers: true, header_converters: :symbol)

    @limit = (params[:limit] || 10).to_i
  end
end
