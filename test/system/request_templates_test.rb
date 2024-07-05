require "application_system_test_case"

class RequestTemplatesTest < ApplicationSystemTestCase
  setup do
    @request_template = request_templates(:one)
  end

  test "visiting the index" do
    visit request_templates_url
    assert_selector "h1", text: "Request templates"
  end

  test "should create request template" do
    visit request_templates_url
    click_on "New request template"

    click_on "Create Request template"

    assert_text "Request template was successfully created"
    click_on "Back"
  end

  test "should update Request template" do
    visit request_template_url(@request_template)
    click_on "Edit this request template", match: :first

    click_on "Update Request template"

    assert_text "Request template was successfully updated"
    click_on "Back"
  end

  test "should destroy Request template" do
    visit request_template_url(@request_template)
    click_on "Destroy this request template", match: :first

    assert_text "Request template was successfully destroyed"
  end
end
