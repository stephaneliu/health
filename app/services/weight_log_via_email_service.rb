class WeightLogViaEmailService
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def process
    User.create!(email: "some_#{rand(1000)}@test.com", password: "#{rand(100)}_he_#{rand(100)}_there")
    Rails.logger.debug "## Email from: #{email.from[:email]}"
    Rails.logger.debug "## Email subject: #{email.subject}"
    Rails.logger.debug "## Email body: #{email.body}"
  end
end
