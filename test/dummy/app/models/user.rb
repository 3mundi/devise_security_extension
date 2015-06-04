if DeviseSecurityExtension.orm == :active_record
  class User < ActiveRecord::Base
    devise :database_authenticatable, :password_archivable,
           :paranoid_verification
  end
else
  class User
    include Mongoid::Document
    include Mongoid::Timestamps

    devise :database_authenticatable, :password_archivable,
           :paranoid_verification

    field :username, type: String
    field :facebook_token, type: String
    field :email, type: String
    field :encrypted_password, type: String

    field :paranoid_verification_attempt, type: Integer, default: 0
    field :paranoid_verification_code, type: String
    field :paranoid_verified_at, type: DateTime

  end
end
