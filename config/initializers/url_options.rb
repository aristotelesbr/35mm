# frozen_string_literal: true

Rails.env.on(:production) do
  Rails.application.routes.default_url_options = { host: Lens::Config.app_host, protocol: :https }

  config.action_mailer.default_url_options = Rails.application.routes.default_url_options
end

Rails.env.on(:development, :test) do
  Rails.application.routes.default_url_options = { port: 3000, protocol: :http, host: 'localhost' }

  config.action_mailer.default_url_options = Rails.application.routes.default_url_options
end
