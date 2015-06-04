ENV['RAILS_ENV'] ||= 'test'

require 'dummy/config/environment'
require 'test/unit'
require 'rails/test_help'
#require 'active_record'
#require 'sqlite3'
require 'mongoid'

Mongoid.configure do |config|
  config.connect_to("devise_security_extension-mongoid-test")
end

require 'devise_security_extension'

# ActiveRecord::Migration.verbose = false
# ActiveRecord::Base.logger = Logger.new(nil)
# ActiveRecord::Migrator.migrate(File.expand_path('../dummy/db/migrate', __FILE__))