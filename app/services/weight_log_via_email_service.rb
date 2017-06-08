class WeightLogViaEmailService
  attr_reader :email, :parser

  def initialize(email:, parser: WeightParserService)
    @email  = email
    @parser = parser
  end

  def process
    parsed = parser.new(email).parse
  end
end
