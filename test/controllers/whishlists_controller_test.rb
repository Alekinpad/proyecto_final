require 'test_helper'

class WishlistsControllerTest < ActionController::TestCase
  setup do
    @wishlist = wishlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wishlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wishlist" do
    assert_difference('Wishlist.count') do
      post :create, wishlist: { icon: @wishlist.icon, name: @wishlist.name, type: @wishlist.type, user_id: @wishlist.user_id }
    end

    assert_redirected_to wishlist_path(assigns(:wishlist))
  end

  test "should show wishlist" do
    get :show, id: @wishlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wishlist
    assert_response :success
  end

  test "should update wishlist" do
    patch :update, id: @wishlist, wishlist: { icon: @wishlist.icon, name: @wishlist.name, type: @wishlist.type, user_id: @wishlist.user_id }
    assert_redirected_to wishlist_path(assigns(:wishlist))
  end

  test "should destroy wishlist" do
    assert_difference('Wishlist.count', -1) do
      delete :destroy, id: @wishlist
    end

    assert_redirected_to wishlists_path
  end
end
