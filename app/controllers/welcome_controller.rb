# frozen_string_literal: true

class WelcomeController < ApplicationController
  DEFAULT_LIMIT = 12

  def index
    @shows = Show.take((params[:limit] || DEFAULT_LIMIT).to_i)
  end
end
