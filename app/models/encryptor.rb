# frozen_string_literal: true

module Encryptor
  def self.encrytor
    ActiveSupport::MessageEncryptor.new(Base64.decode64(Photomatic::Config.encryptor_secret))
  end

  def self.encrypt(unencrypted_message, expires_in: nil, purpose: nil)
    encrytor.encrypt_and_sign(unencrypted_message, expires_in:, purpose:)
  end

  def self.decrypt(ecrypted_message, purpose: nil)
    encrytor.decrypt_and_verify(ecrypted_message, purpose:)
  rescue ActiveSupport::MessageEncryptor::InvalidMessage
    nil
  end
end
