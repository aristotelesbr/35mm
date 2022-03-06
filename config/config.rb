# frozen_string_literal: true

module ThirtyFiveMm
  Config =
    SuperConfig.new(raise_exception: false) do
      mandatory(:database_url, string)
      mandatory(:tz, string)
      credential(:encryptor_secret)
    end

  public_constant :Config
end
