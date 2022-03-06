# frozen_string_literal: true

require 'test_helper'

class EncryptorTest < ActiveSupport::TestCase
  test 'encrypted messages' do
    encrypted = Encryptor.encrypt('hello')
    refute_equal 'hello', encrypted
  end

  test 'decrypt message' do
    encrypted = Encryptor.decrypt(Encryptor.encrypt('hello'))
    assert_equal 'hello', encrypted
  end

  test 'returns nil for invalid decryption' do
    assert_nil Encryptor.decrypt('foo')
  end
end
