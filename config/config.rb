# frozen_string_literal: true

module Lens
  Config =
    SuperConfig.new(raise_exception: false) do
      mandatory :tz, string
      credential :encryptor_secret
      credential :signed_url_secret
      mandatory :database_url, string
      optional :app_host, string, 'example.com'
    end

  public_constant :Config
end
