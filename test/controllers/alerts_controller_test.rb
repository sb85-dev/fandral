require "test_helper"

class AlertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alert = alerts(:one)
  end

  test "should get index" do
    get alerts_url
    assert_response :success
  end

  test "should get new" do
    get new_alert_url
    assert_response :success
  end

  test "should create alert" do
    assert_difference("Alert.count") do
      post alerts_url, params: { alert: { assigned_to: @alert.assigned_to, background_review_by_lr: @alert.background_review_by_lr, date_documents_requested: @alert.date_documents_requested, date_of_notice: @alert.date_of_notice, date_oldest_account: @alert.date_oldest_account, decision: @alert.decision, document_request: @alert.document_request, documents_received: @alert.documents_received, exposure: @alert.exposure, external_account: @alert.external_account, fca_maintain: @alert.fca_maintain, fdra_facts_notes: @alert.fdra_facts_notes, fraud_flags: @alert.fraud_flags, funds_returned_reason: @alert.funds_returned_reason, idv_docs_received: @alert.idv_docs_received, loss: @alert.loss, member_id: @alert.member_id, monitor_until: @alert.monitor_until, olb_review_by_lr: @alert.olb_review_by_lr, received_from: @alert.received_from, type_of_review: @alert.type_of_review } }
    end

    assert_redirected_to alert_url(Alert.last)
  end

  test "should show alert" do
    get alert_url(@alert)
    assert_response :success
  end

  test "should get edit" do
    get edit_alert_url(@alert)
    assert_response :success
  end

  test "should update alert" do
    patch alert_url(@alert), params: { alert: { assigned_to: @alert.assigned_to, background_review_by_lr: @alert.background_review_by_lr, date_documents_requested: @alert.date_documents_requested, date_of_notice: @alert.date_of_notice, date_oldest_account: @alert.date_oldest_account, decision: @alert.decision, document_request: @alert.document_request, documents_received: @alert.documents_received, exposure: @alert.exposure, external_account: @alert.external_account, fca_maintain: @alert.fca_maintain, fdra_facts_notes: @alert.fdra_facts_notes, fraud_flags: @alert.fraud_flags, funds_returned_reason: @alert.funds_returned_reason, idv_docs_received: @alert.idv_docs_received, loss: @alert.loss, member_id: @alert.member_id, monitor_until: @alert.monitor_until, olb_review_by_lr: @alert.olb_review_by_lr, received_from: @alert.received_from, type_of_review: @alert.type_of_review } }
    assert_redirected_to alert_url(@alert)
  end

  test "should destroy alert" do
    assert_difference("Alert.count", -1) do
      delete alert_url(@alert)
    end

    assert_redirected_to alerts_url
  end
end
