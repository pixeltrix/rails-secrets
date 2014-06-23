require 'test_helper'

class RailsSecretsTest < ActiveSupport::TestCase

  test "secrets is loaded from config/secrets.yml" do
    assert_equal "9f4a992", app.secrets.api_token
  end

  test "a config value set in the configuration stage is set to the correct value" do
    assert_equal app.secrets.secret_key_base, app.config.secret_environment_config
  end

  test "config.secret_key_base is copied from secrets.secret_key_base" do
    assert_equal app.secrets.secret_key_base, app.config.secret_key_base
  end

  private

  def app
    Rails.application
  end

end