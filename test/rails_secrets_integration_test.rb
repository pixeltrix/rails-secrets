require 'test_helper'

class RailsSecretsIntegrationTest < ActionDispatch::IntegrationTest

  test "load root page" do
    get '/'
    assert_response :success
  end

end
