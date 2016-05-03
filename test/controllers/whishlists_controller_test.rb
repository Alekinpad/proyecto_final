require 'test_helper'

class WhishlistsControllerTest < ActionController::TestCase
  setup do
    @whishlist = whishlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:whishlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create whishlist" do
    assert_difference('Whishlist.count') do
      post :create, whishlist: { icon: @whishlist.icon, name: @whishlist.name, type: @whishlist.type, user_id: @whishlist.user_id }
    end

    assert_redirected_to whishlist_path(assigns(:whishlist))
  end

  test "should show whishlist" do
    get :show, id: @whishlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @whishlist
    assert_response :success
  end

  test "should update whishlist" do
    patch :update, id: @whishlist, whishlist: { icon: @whishlist.icon, name: @whishlist.name, type: @whishlist.type, user_id: @whishlist.user_id }
    assert_redirected_to whishlist_path(assigns(:whishlist))
  end

  test "should destroy whishlist" do
    assert_difference('Whishlist.count', -1) do
      delete :destroy, id: @whishlist
    end

    assert_redirected_to whishlists_path
  end
end
