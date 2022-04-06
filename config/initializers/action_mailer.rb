# frozen_string_literal: true

Rails.env.on(:development) do
  config.action_mailer.smtp_settings = { port: 1025 }
  config.action_mailer.perform_deliveries = true
end
