# frozen_string_literal: true

class WelcomeController < ApplicationController
  include WelcomeHelper
  
  DEFAULT_LIMIT = 12

  def index
    @shows = titles_csv_import.take((params[:limit] || DEFAULT_LIMIT).to_i)
  end
end
