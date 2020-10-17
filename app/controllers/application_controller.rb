class ApplicationController < ActionController::Base
  def root
    render json: { hello: 'world' }
  end
end
