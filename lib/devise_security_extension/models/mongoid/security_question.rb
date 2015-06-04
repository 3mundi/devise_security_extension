class SecurityQuestion
  include Mongoid::Document

  field :locale, type: String
  field :name, type: String
end
