require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "documents show" do
    get document_url(@document.version_id, @document.section_id, @document)
    assert_response :success
  end
end
