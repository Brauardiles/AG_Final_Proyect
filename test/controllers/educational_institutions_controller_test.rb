require 'test_helper'

class EducationalInstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @educational_institution = educational_institutions(:one)
  end

  test "should get index" do
    get educational_institutions_url
    assert_response :success
  end

  test "should get new" do
    get new_educational_institution_url
    assert_response :success
  end

  test "should create educational_institution" do
    assert_difference('EducationalInstitution.count') do
      post educational_institutions_url, params: { educational_institution: { Integration: @educational_institution.Integration, Name: @educational_institution.Name, Type: @educational_institution.Type, adress: @educational_institution.adress, city: @educational_institution.city, email: @educational_institution.email, phone: @educational_institution.phone, region: @educational_institution.region, rol_data_base: @educational_institution.rol_data_base, state: @educational_institution.state } }
    end

    assert_redirected_to educational_institution_url(EducationalInstitution.last)
  end

  test "should show educational_institution" do
    get educational_institution_url(@educational_institution)
    assert_response :success
  end

  test "should get edit" do
    get edit_educational_institution_url(@educational_institution)
    assert_response :success
  end

  test "should update educational_institution" do
    patch educational_institution_url(@educational_institution), params: { educational_institution: { Integration: @educational_institution.Integration, Name: @educational_institution.Name, Type: @educational_institution.Type, adress: @educational_institution.adress, city: @educational_institution.city, email: @educational_institution.email, phone: @educational_institution.phone, region: @educational_institution.region, rol_data_base: @educational_institution.rol_data_base, state: @educational_institution.state } }
    assert_redirected_to educational_institution_url(@educational_institution)
  end

  test "should destroy educational_institution" do
    assert_difference('EducationalInstitution.count', -1) do
      delete educational_institution_url(@educational_institution)
    end

    assert_redirected_to educational_institutions_url
  end
end
