require 'test_helper'

class LegalDoucumentsControllerTest < ActionController::TestCase
  setup do
    @legal_doucument = legal_doucuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_doucuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_doucument" do
    assert_difference('LegalDoucument.count') do
      post :create, legal_doucument: { do_Not_Resuscitate: @legal_doucument.do_Not_Resuscitate, healthcare_Directive: @legal_doucument.healthcare_Directive, letter_of_Authorization: @legal_doucument.letter_of_Authorization, location_of_Original: @legal_doucument.location_of_Original, pension_Papers: @legal_doucument.pension_Papers, power_of_Attorney: @legal_doucument.power_of_Attorney, trust: @legal_doucument.trust, will: @legal_doucument.will, wishes: @legal_doucument.wishes }
    end

    assert_redirected_to legal_doucument_path(assigns(:legal_doucument))
  end

  test "should show legal_doucument" do
    get :show, id: @legal_doucument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_doucument
    assert_response :success
  end

  test "should update legal_doucument" do
    put :update, id: @legal_doucument, legal_doucument: { do_Not_Resuscitate: @legal_doucument.do_Not_Resuscitate, healthcare_Directive: @legal_doucument.healthcare_Directive, letter_of_Authorization: @legal_doucument.letter_of_Authorization, location_of_Original: @legal_doucument.location_of_Original, pension_Papers: @legal_doucument.pension_Papers, power_of_Attorney: @legal_doucument.power_of_Attorney, trust: @legal_doucument.trust, will: @legal_doucument.will, wishes: @legal_doucument.wishes }
    assert_redirected_to legal_doucument_path(assigns(:legal_doucument))
  end

  test "should destroy legal_doucument" do
    assert_difference('LegalDoucument.count', -1) do
      delete :destroy, id: @legal_doucument
    end

    assert_redirected_to legal_doucuments_path
  end
end
