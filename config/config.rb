# frozen_string_literal: true

module ThirtyFiveMm
  Config = SuperConfig.new(raise_exception: false) do
    mandatory :database_url, string
    optional :tz, string
  end
end
