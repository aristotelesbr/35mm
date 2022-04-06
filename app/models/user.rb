# frozen_string_literal: true

class User < ApplicationRecord
  attr_keyring Photomatic::Config.user_encryption_key, digest_salt: Photomatic::Config.user_digest_salt
  attr_encrypt :email

  defaults username: -> { Haiku.next { |new_username| User.exists?(username: new_username) } }
end
