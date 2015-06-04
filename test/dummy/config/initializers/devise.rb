DeviseSecurityExtension.orm = :mongoid

Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  if DeviseSecurityExtension.orm == :mongoid
    require 'devise/orm/mongoid'
  else
    require 'devise/orm/active_record'
  end

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]
end
