class ApplicationController < ActionController::Base
  before_action :set_request_format, except: [:mount]

  def mount
    render 'layouts/application'
  end

  private

  def set_request_format
    request.format = 'json'
  end
end
