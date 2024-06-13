require "application_system_test_case"

class AlertsTest < ApplicationSystemTestCase
  setup do
    @alert = alerts(:one)
  end

  test "visiting the index" do
    visit alerts_url
    assert_selector "h1", text: "Alerts"
  end

  test "should create alert" do
    visit alerts_url
    click_on "New alert"

    fill_in "Assigned to", with: @alert.assigned_to
    fill_in "Background review by lr", with: @alert.background_review_by_lr
    fill_in "Date documents requested", with: @alert.date_documents_requested
    fill_in "Date of notice", with: @alert.date_of_notice
    fill_in "Date oldest account", with: @alert.date_oldest_account
    fill_in "Decision", with: @alert.decision
    check "Document request" if @alert.document_request
    check "Documents received" if @alert.documents_received
    fill_in "Exposure", with: @alert.exposure
    fill_in "External account", with: @alert.external_account
    fill_in "Fca maintain", with: @alert.fca_maintain
    fill_in "Fdra facts notes", with: @alert.fdra_facts_notes
    fill_in "Fraud flags", with: @alert.fraud_flags
    fill_in "Funds returned reason", with: @alert.funds_returned_reason
    check "Idv docs received" if @alert.idv_docs_received
    fill_in "Loss", with: @alert.loss
    fill_in "Member", with: @alert.member_id
    fill_in "Monitor until", with: @alert.monitor_until
    fill_in "Olb review by lr", with: @alert.olb_review_by_lr
    fill_in "Received from", with: @alert.received_from
    fill_in "Type of review", with: @alert.type_of_review
    click_on "Create Alert"

    assert_text "Alert was successfully created"
    click_on "Back"
  end

  test "should update Alert" do
    visit alert_url(@alert)
    click_on "Edit this alert", match: :first

    fill_in "Assigned to", with: @alert.assigned_to
    fill_in "Background review by lr", with: @alert.background_review_by_lr
    fill_in "Date documents requested", with: @alert.date_documents_requested
    fill_in "Date of notice", with: @alert.date_of_notice
    fill_in "Date oldest account", with: @alert.date_oldest_account
    fill_in "Decision", with: @alert.decision
    check "Document request" if @alert.document_request
    check "Documents received" if @alert.documents_received
    fill_in "Exposure", with: @alert.exposure
    fill_in "External account", with: @alert.external_account
    fill_in "Fca maintain", with: @alert.fca_maintain
    fill_in "Fdra facts notes", with: @alert.fdra_facts_notes
    fill_in "Fraud flags", with: @alert.fraud_flags
    fill_in "Funds returned reason", with: @alert.funds_returned_reason
    check "Idv docs received" if @alert.idv_docs_received
    fill_in "Loss", with: @alert.loss
    fill_in "Member", with: @alert.member_id
    fill_in "Monitor until", with: @alert.monitor_until
    fill_in "Olb review by lr", with: @alert.olb_review_by_lr
    fill_in "Received from", with: @alert.received_from
    fill_in "Type of review", with: @alert.type_of_review
    click_on "Update Alert"

    assert_text "Alert was successfully updated"
    click_on "Back"
  end

  test "should destroy Alert" do
    visit alert_url(@alert)
    click_on "Destroy this alert", match: :first

    assert_text "Alert was successfully destroyed"
  end
end
