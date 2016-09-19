require 'test_helper'

class VersionsControllerTest < ActionDispatch::IntegrationTest
  setup { @version_fixtures = versions(:v1, :v2) }

  test "versions show" do
    @version_fixtures.each do |version|
      get version_url(version.id)
      assert_response :success
    end
  end
end
