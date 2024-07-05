require "test_helper"

class RequestTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_template = request_templates(:one)
  end

  test "should get index" do
    get request_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_request_template_url
    assert_response :success
  end

  test "should create request_template" do
    assert_difference("RequestTemplate.count") do
      post request_templates_url, params: { request_template: {  } }
    end

    assert_redirected_to request_template_url(RequestTemplate.last)
  end

  test "should show request_template" do
    get request_template_url(@request_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_template_url(@request_template)
    assert_response :success
  end

  test "should update request_template" do
    patch request_template_url(@request_template), params: { request_template: {  } }
    assert_redirected_to request_template_url(@request_template)
  end

  test "should destroy request_template" do
    assert_difference("RequestTemplate.count", -1) do
      delete request_template_url(@request_template)
    end

    assert_redirected_to request_templates_url
  end
end
