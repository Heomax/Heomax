require 'test_helper'

class SubcriptionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subcription_index_url
    assert_response :success
  end

end
