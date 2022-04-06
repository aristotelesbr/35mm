# frozen_string_literal: true

require 'test_helper'

class LoginLinkTest < ActiveSupport::TestCase
  test 'creates login url' do
    login_url = LoginLink.create!('john@example.org')

    assert LoginLink.valid?(login_url)
  end

  test 'rejects expired urls' do
    login_url = LoginLink.create!('john@example.org')

    AuthCode.last.update(expires_at: 20.minutes.ago)

    refute LoginLink.valid?(login_url)
  end

  test 'reject codes already used' do
    login_url = LoginLink.create!('john@example.org')

    assert LoginLink.valid?(login_url)
    refute LoginLink.valid?(login_url)
  end

  test 'reject tempered urls' do
    login_url = LoginLink.create!('john@example.org')
    AuthCode.last.update!(expires_at: 10.minutes.ago)
    login_url.gsub!(/email=([^&]+)/, 'email=tempered')

    refute LoginLink.valid?(login_url)
  end
end
