require 'active_record'
require 'devise_security_extension/orm/active_record'
require 'devise_security_extension/models/active_record/old_password'
require 'devise_security_extension/models/active_record/security_question'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: ':memory:')
