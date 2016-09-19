require 'test_helper'

class SectionsControllerTest < ActionDispatch::IntegrationTest
  setup { @section_fixtures = sections(:v1_s1, :v1_s2) }

  test "versions show" do
    @section_fixtures.each do |section|
      get "/#{section.version_id}/#{section.id}"
      assert_response :redirect
    end
  end
end
