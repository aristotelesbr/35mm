# frozen_string_literal: true

class AuthCode < ApplicationRecord
  attr_keyring Photomatic::Config.auth_code_encryption_key, digest_salt: Photomatic::Config.auth_code_digest_salt
  attr_encrypt :code

  defaults code: -> { Haiku.call(variant: -> { SecureRandom.hex(5) }) },
           expires_at: -> { Photomatic::Config.email_verification_ttl.minutes.from_now }

  def expired?
    Time.current > expires_at
  end
end
