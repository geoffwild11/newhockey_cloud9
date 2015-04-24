require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  def setup
    @base_title = "NEWHockey"
  end
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select 'title', "Help | #{@base_title}"
  end
  
  test "should get about" do
    get :about
    assert_response :success
    assert_select 'title', "About | #{@base_title}"
  end
  
  test "should get teams" do
    get :teams
    assert_response :success
    assert_select 'title', "Teams | NEWHockey"
  end

end
