class IncomingEmailsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    Rails.logger.debug "### param: #{params.inspect}"
  end
end
