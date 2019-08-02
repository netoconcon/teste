require 'test_helper'

class MentorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentor_index_url
    assert_response :success
  end

  test "should get show" do
    get mentor_show_url
    assert_response :success
  end

  test "should get new" do
    get mentor_new_url
    assert_response :success
  end

  test "should get edit" do
    get mentor_edit_url
    assert_response :success
  end

end
