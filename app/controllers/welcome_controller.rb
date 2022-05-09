# frozen_string_literal: true

require 'csv'

class WelcomeController < ApplicationController
  def index
    @shows = Show.take((params[:limit] || 12).to_i)
  end
end
