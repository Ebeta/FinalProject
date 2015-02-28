require 'test_helper'

class ProfileMedicationsControllerTest < ActionController::TestCase
  setup do
    @profile_medication = profile_medications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profile_medications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile_medication" do
    assert_difference('ProfileMedication.count') do
      post :create, profile_medication: { count: @profile_medication.count, dose: @profile_medication.dose, endDate: @profile_medication.endDate, frequency: @profile_medication.frequency, medication_id: @profile_medication.medication_id, profile_id: @profile_medication.profile_id, startDate: @profile_medication.startDate, taken: @profile_medication.taken, unit: @profile_medication.unit, unit: @profile_medication.unit }
    end

    assert_redirected_to profile_medication_path(assigns(:profile_medication))
  end

  test "should show profile_medication" do
    get :show, id: @profile_medication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile_medication
    assert_response :success
  end

  test "should update profile_medication" do
    patch :update, id: @profile_medication, profile_medication: { count: @profile_medication.count, dose: @profile_medication.dose, endDate: @profile_medication.endDate, frequency: @profile_medication.frequency, medication_id: @profile_medication.medication_id, profile_id: @profile_medication.profile_id, startDate: @profile_medication.startDate, taken: @profile_medication.taken, unit: @profile_medication.unit, unit: @profile_medication.unit }
    assert_redirected_to profile_medication_path(assigns(:profile_medication))
  end

  test "should destroy profile_medication" do
    assert_difference('ProfileMedication.count', -1) do
      delete :destroy, id: @profile_medication
    end

    assert_redirected_to profile_medications_path
  end
end
