require 'test_helper'

class SalesTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sales_team = sales_teams(:one)
  end

  test "should get index" do
    get sales_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_sales_team_url
    assert_response :success
  end

  test "should create sales_team" do
    assert_difference('SalesTeam.count') do
      post sales_teams_url, params: { sales_team: { Course: @sales_team.Course, Customer: @sales_team.Customer, Name: @sales_team.Name, Status: @sales_team.Status } }
    end

    assert_redirected_to sales_team_url(SalesTeam.last)
  end

  test "should show sales_team" do
    get sales_team_url(@sales_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_sales_team_url(@sales_team)
    assert_response :success
  end

  test "should update sales_team" do
    patch sales_team_url(@sales_team), params: { sales_team: { Course: @sales_team.Course, Customer: @sales_team.Customer, Name: @sales_team.Name, Status: @sales_team.Status } }
    assert_redirected_to sales_team_url(@sales_team)
  end

  test "should destroy sales_team" do
    assert_difference('SalesTeam.count', -1) do
      delete sales_team_url(@sales_team)
    end

    assert_redirected_to sales_teams_url
  end
end
