require 'test_helper'

class ArticleControllerTest < ActionController::TestCase
  test "should get articles" do
    get :articles
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
