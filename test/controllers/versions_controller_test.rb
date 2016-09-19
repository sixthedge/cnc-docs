require 'test_helper'

class VersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @version = versions(:one)
  end

  test "versions show" do
    get version_url(@version.id)
    assert_response :success
  end
end
