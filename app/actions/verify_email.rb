# frozen_string_literal: true

class VerifyEmail
  include Voltage.call

  attr_reader :signed_url, :code, :email

  def initialize(signed_url:, code:, email:)
    @code = code
    @email = email
    @signed_url = signed_url
  end

  def auth_code
    @auth_code ||= AuthCode.find_by(code: code.to_s)
  end

  def call
    return emit(:error) unless LoginLink.valid?(signed_url)

    user =
      User.find_or_create_by!(
        email_digest: User.keyring.digest(email)
      ) do |record|
        record.email = email
      end

    emit(:success, user)
  end
end
