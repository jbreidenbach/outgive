require 'test_helper'

class DonationsControllerTest < ActionController::TestCase
  setup do
    @donation = donations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donation" do
    assert_difference('Donation.count') do
      post :create, donation: { campaign_id: @donation.campaign_id, grad_year: @donation.grad_year, private: @donation.private, school_id: @donation.school_id, schoolcode: @donation.schoolcode, schoolname: @donation.schoolname, section: @donation.section, section_id: @donation.section_id, unicode: @donation.unicode, uniname: @donation.uniname, university_id: @donation.university_id, user_id: @donation.user_id, value: @donation.value }
    end

    assert_redirected_to donation_path(assigns(:donation))
  end

  test "should show donation" do
    get :show, id: @donation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donation
    assert_response :success
  end

  test "should update donation" do
    put :update, id: @donation, donation: { campaign_id: @donation.campaign_id, grad_year: @donation.grad_year, private: @donation.private, school_id: @donation.school_id, schoolcode: @donation.schoolcode, schoolname: @donation.schoolname, section: @donation.section, section_id: @donation.section_id, unicode: @donation.unicode, uniname: @donation.uniname, university_id: @donation.university_id, user_id: @donation.user_id, value: @donation.value }
    assert_redirected_to donation_path(assigns(:donation))
  end

  test "should destroy donation" do
    assert_difference('Donation.count', -1) do
      delete :destroy, id: @donation
    end

    assert_redirected_to donations_path
  end
end
