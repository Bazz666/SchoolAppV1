require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SchoolAppProject
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    ActionMailer::Base.smtp_settings = {
      :address     => 'smtp.gmail.com',
      :domain      => 'mail.google.com',
      :port        => 587,
      :user_name   => "schoolapp.mailer@gmail.com",
      :password    => "PasswordMailer1",
      :authentication   =>'login',
      :enable_starttls_auto => true
    }

  end
end
