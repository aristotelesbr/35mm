# frozen_string_literal: true

class AuthCode < ApplicationRecord
  attr_keyring Lens::Config.auth_code_encryption_key, digest_salt: Lens::Config.auth_code_digest_salt
  attr_encrypt :code

  defaults code: -> { Haiku.call(variant: -> { SecureRandom.hex(5) }) }, expires_at: -> { 5.minutes.from_now }
end
