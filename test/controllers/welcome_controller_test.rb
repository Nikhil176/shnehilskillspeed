require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get welcome_Home_url
    assert_response :success
  end

  test "should get Courses" do
    get welcome_Courses_url
    assert_response :success
  end

  test "should get How_it_works" do
    get welcome_How_it_works_url
    assert_response :success
  end

  test "should get Corporates" do
    get welcome_Corporates_url
    assert_response :success
  end

  test "should get Blog" do
    get welcome_Blog_url
    assert_response :success
  end

end
