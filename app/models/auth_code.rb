# frozen_string_literal: true

class AuthCode < ApplicationRecord
  attr_keyring Lens::Config.auth_code_encryption_key, digest_salt: Lens::Config.auth_code_digest_salt
  attr_encrypt :code

  defaults code: -> { Haiku.call(variant: -> { SecureRandom.hex(5) }) },
           expires_at: -> { Lens::Config.email_verification_ttl.minutes.from_now }

  def expired?
    Time.current > expires_at
  end
end
