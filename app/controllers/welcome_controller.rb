# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    DEFAULT_LIMIT = 12
    
    @shows = Show.take((params[:limit] || DEFAULT_LIMIT).to_i)
  end
end
