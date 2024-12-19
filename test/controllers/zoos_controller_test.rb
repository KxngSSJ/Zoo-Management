require "test_helper"

class ZoosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zoo = zoos(:one)
  end

  test "should get index" do
    get zoos_url
    assert_response :success
  end

  test "should get new" do
    get new_zoo_url
    assert_response :success
  end

  test "should create zoo" do
    assert_difference("Zoo.count") do
      post zoos_url, params: { zoo: { animal: @zoo.animal, email: @zoo.email, first_name: @zoo.first_name, last_name: @zoo.last_name, phone: @zoo.phone } }
    end

    assert_redirected_to zoo_url(Zoo.last)
  end

  test "should show zoo" do
    get zoo_url(@zoo)
    assert_response :success
  end

  test "should get edit" do
    get edit_zoo_url(@zoo)
    assert_response :success
  end

  test "should update zoo" do
    patch zoo_url(@zoo), params: { zoo: { animal: @zoo.animal, email: @zoo.email, first_name: @zoo.first_name, last_name: @zoo.last_name, phone: @zoo.phone } }
    assert_redirected_to zoo_url(@zoo)
  end

  test "should destroy zoo" do
    assert_difference("Zoo.count", -1) do
      delete zoo_url(@zoo)
    end

    assert_redirected_to zoos_url
  end
end
