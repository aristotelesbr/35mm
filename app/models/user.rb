# frozen_string_literal: true

class User < ApplicationRecord
  attr_keyring Lens::Config.user_encryption_key, digest_salt: Lens::Config.user_digest_salt
  attr_encrypt :email
end
