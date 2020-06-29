require 'test_helper'

class Admin::ProducersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_producers_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_producers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_producers_destroy_url
    assert_response :success
  end

end
