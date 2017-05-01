class WeightLogViaEmailService
  attr_reader :email

  def initialize(email)
    @email = email
  end


  def process
    Rails.logger.debug "## Email from: #{email.from[:email]}"
    Rails.logger.debug "## Email subject: #{email.subject}"
    Rails.logger.debug "## Email body: #{email.body}"

    render text: 'success', status: 200
  end
end
