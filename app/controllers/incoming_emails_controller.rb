class IncomingEmailsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    Rails.logger.debug "### body content: #{params[:plain]}"
    Rails.logger.debug "### subject: #{params[:subject]}"
    Rails.logger.debug "### headers: #{params[:headers]}"
  end
end
