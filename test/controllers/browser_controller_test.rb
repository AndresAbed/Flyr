require 'test_helper'

class BrowserControllerTest < ActionController::TestCase
  test "should get incompatible" do
    get :incompatible
    assert_response :success
  end

end
