Griddler.configure do |config|
  config.processor_class  = WeightLogViaEmail
  config.email_class      = Griddler::Email
  config.processor_method = :process
  config.reply_delimiter  = '-- REPLY ABOVE THIS LINE --'
  config.email_service    = :cloudmailin
end
