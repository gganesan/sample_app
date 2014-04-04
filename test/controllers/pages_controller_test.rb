require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "should get the right title" do
	get :home
	assert_select 'title', "Ruby on Rails Tutorial Sample App | Home"
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
  end
  
  test "should get about" do
	get :about
	assert_response :success
	end
	
end
