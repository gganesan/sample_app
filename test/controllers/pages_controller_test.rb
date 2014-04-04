require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end
  
  test "should get the right title for home page" do
	get :home
	assert_select 'title', "Ruby on Rails Tutorial Sample App | Home"
  end
  
  test "body should not be blank" do
	get :home
	#regex need to be fixed
	assert_select 'body', /\s*/
  end
  
  test "should get contact" do
    get :contact
    assert_response :success
  end
  
    test "should get the right title for contact page" do
	get :contact
	assert_select 'title', "Ruby on Rails Tutorial Sample App | Contact"
  end
  
  test "should get about" do
	get :about
	assert_response :success
	end
	
	test "should get the right title for about page" do
	get :about
	assert_select 'title', "Ruby on Rails Tutorial Sample App | About"
  end
	
end
