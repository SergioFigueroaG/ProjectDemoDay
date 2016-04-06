require 'test_helper'

class PartnerEventsControllerTest < ActionController::TestCase
  setup do
    @partner_event = partner_events(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_events)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_event" do
    assert_difference('PartnerEvent.count') do
      post :create, partner_event: { correo: @partner_event.correo, description: @partner_event.description, event_id: @partner_event.event_id, state: @partner_event.state, type_partners: @partner_event.type_partners, user_id: @partner_event.user_id }
    end

    assert_redirected_to partner_event_path(assigns(:partner_event))
  end

  test "should show partner_event" do
    get :show, id: @partner_event
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_event
    assert_response :success
  end

  test "should update partner_event" do
    patch :update, id: @partner_event, partner_event: { correo: @partner_event.correo, description: @partner_event.description, event_id: @partner_event.event_id, state: @partner_event.state, type_partners: @partner_event.type_partners, user_id: @partner_event.user_id }
    assert_redirected_to partner_event_path(assigns(:partner_event))
  end

  test "should destroy partner_event" do
    assert_difference('PartnerEvent.count', -1) do
      delete :destroy, id: @partner_event
    end

    assert_redirected_to partner_events_path
  end
end
