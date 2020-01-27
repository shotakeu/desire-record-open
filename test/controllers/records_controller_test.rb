require 'test_helper'

class RecordsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::ControllerHelpers

  setup do
    @record = records(:one)
    sign_in FactoryBot.create(:john)
  end

  test "should get index" do
    get records_url
    assert_response :success
  end

  test "should get new" do
    get new_record_url
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post records_url, params: { record: { activity: @record.activity, comment: @record.comment, date: @record.date, desire_level: @record.desire_level, feeling_level: @record.feeling_level, hour: @record.hour } }
    end

    assert_redirected_to record_url(Record.last)
  end

  test "show_date by filiterd user" do
  end

  test "should show record" do
    get record_url(@record)
    assert_response :success
  end

  test "should get edit" do
    get edit_record_url(@record)
    assert_response :success
  end

  test "should update record" do
    patch record_url(@record), params: { record: { activity: @record.activity, comment: @record.comment, date: @record.date, desire_level: @record.desire_level, feeling_level: @record.feeling_level, hour: @record.hour } }
    assert_redirected_to record_url(@record)
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete record_url(@record)
    end

    assert_redirected_to records_url
  end
end
