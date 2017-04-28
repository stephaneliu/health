class WeightLogViaEmailService
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def process
    Rails.logger.info "## Email from: #{email.from[:email]}"
    Rails.logger.info "## Email subject: #{email.subject}"
    Rails.logger.info "## Email body: #{email.body}"
  end
end
