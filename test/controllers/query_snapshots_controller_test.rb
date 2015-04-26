require 'test_helper'

class QuerySnapshotsControllerTest < ActionController::TestCase
  setup do
    @query_snapshot = query_snapshots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_snapshots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_snapshot" do
    assert_difference('QuerySnapshot.count') do
      post :create, query_snapshot: {  }
    end

    assert_redirected_to query_snapshot_path(assigns(:query_snapshot))
  end

  test "should show query_snapshot" do
    get :show, id: @query_snapshot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_snapshot
    assert_response :success
  end

  test "should update query_snapshot" do
    patch :update, id: @query_snapshot, query_snapshot: {  }
    assert_redirected_to query_snapshot_path(assigns(:query_snapshot))
  end

  test "should destroy query_snapshot" do
    assert_difference('QuerySnapshot.count', -1) do
      delete :destroy, id: @query_snapshot
    end

    assert_redirected_to query_snapshots_path
  end
end
