require "application_system_test_case"

class EducationalInstitutionsTest < ApplicationSystemTestCase
  setup do
    @educational_institution = educational_institutions(:one)
  end

  test "visiting the index" do
    visit educational_institutions_url
    assert_selector "h1", text: "Educational Institutions"
  end

  test "creating a Educational institution" do
    visit educational_institutions_url
    click_on "New Educational Institution"

    check "Integration" if @educational_institution.Integration
    fill_in "Name", with: @educational_institution.Name
    fill_in "Type", with: @educational_institution.Type
    fill_in "Adress", with: @educational_institution.adress
    fill_in "City", with: @educational_institution.city
    fill_in "Email", with: @educational_institution.email
    fill_in "Phone", with: @educational_institution.phone
    fill_in "Region", with: @educational_institution.region
    fill_in "Rol data base", with: @educational_institution.rol_data_base
    fill_in "State", with: @educational_institution.state
    click_on "Create Educational institution"

    assert_text "Educational institution was successfully created"
    click_on "Back"
  end

  test "updating a Educational institution" do
    visit educational_institutions_url
    click_on "Edit", match: :first

    check "Integration" if @educational_institution.Integration
    fill_in "Name", with: @educational_institution.Name
    fill_in "Type", with: @educational_institution.Type
    fill_in "Adress", with: @educational_institution.adress
    fill_in "City", with: @educational_institution.city
    fill_in "Email", with: @educational_institution.email
    fill_in "Phone", with: @educational_institution.phone
    fill_in "Region", with: @educational_institution.region
    fill_in "Rol data base", with: @educational_institution.rol_data_base
    fill_in "State", with: @educational_institution.state
    click_on "Update Educational institution"

    assert_text "Educational institution was successfully updated"
    click_on "Back"
  end

  test "destroying a Educational institution" do
    visit educational_institutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Educational institution was successfully destroyed"
  end
end
