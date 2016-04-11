json.array!(@partner_events) do |partner_event|
  json.extract! partner_event, :id, :event_id, :user_id, :description, :state, :type_partners, :correo
  json.url partner_event_url(partner_event, format: :json)
end
