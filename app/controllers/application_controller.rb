# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def root
    IngestPurchases.call
    render json: { success: true }
  end
end
