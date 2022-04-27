# frozen_string_literal: true

require 'csv'

class WelcomeController < ApplicationController
  def index
    @shows = CSV.foreach('netflix_titles.csv', headers: true, header_converters: :symbol)
                .take((params[:limit] || 10).to_i)

  end
end
