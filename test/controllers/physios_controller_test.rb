require 'test_helper'

class PhysiosControllerTest < ActionController::TestCase
  setup do
    @physio = physios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physio" do
    assert_difference('Physio.count') do
      post :create, physio: { dob: @physio.dob, email: @physio.email, name: @physio.name, password_digest: @physio.password_digest, phone_number: @physio.phone_number, profile_picture: @physio.profile_picture, registered: @physio.registered, service_id: @physio.service_id }
    end

    assert_redirected_to physio_path(assigns(:physio))
  end

  test "should show physio" do
    get :show, id: @physio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physio
    assert_response :success
  end

  test "should update physio" do
    patch :update, id: @physio, physio: { dob: @physio.dob, email: @physio.email, name: @physio.name, password_digest: @physio.password_digest, phone_number: @physio.phone_number, profile_picture: @physio.profile_picture, registered: @physio.registered, service_id: @physio.service_id }
    assert_redirected_to physio_path(assigns(:physio))
  end

  test "should destroy physio" do
    assert_difference('Physio.count', -1) do
      delete :destroy, id: @physio
    end

    assert_redirected_to physios_path
  end
end
