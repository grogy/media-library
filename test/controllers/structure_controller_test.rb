require 'test_helper'

class StructureControllerTest < ActionDispatch::IntegrationTest
  test "should get glob" do
    get structure_glob_url
    assert_response :success
  end

  test "should get tree" do
    get structure_tree_url
    assert_response :success
  end

end
