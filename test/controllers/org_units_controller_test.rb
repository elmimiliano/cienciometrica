require 'test_helper'

class OrgUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @org_unit = org_units(:one)
  end

  test "should get index" do
    get org_units_url
    assert_response :success
  end

  test "should get new" do
    get new_org_unit_url
    assert_response :success
  end

  test "should create org_unit" do
    assert_difference('OrgUnit.count') do
      post org_units_url, params: { org_unit: { city: @org_unit.city, country: @org_unit.country, name: @org_unit.name, post_code: @org_unit.post_code, street: @org_unit.street } }
    end

    assert_redirected_to org_unit_url(OrgUnit.last)
  end

  test "should show org_unit" do
    get org_unit_url(@org_unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_org_unit_url(@org_unit)
    assert_response :success
  end

  test "should update org_unit" do
    patch org_unit_url(@org_unit), params: { org_unit: { city: @org_unit.city, country: @org_unit.country, name: @org_unit.name, post_code: @org_unit.post_code, street: @org_unit.street } }
    assert_redirected_to org_unit_url(@org_unit)
  end

  test "should destroy org_unit" do
    assert_difference('OrgUnit.count', -1) do
      delete org_unit_url(@org_unit)
    end

    assert_redirected_to org_units_url
  end
end
