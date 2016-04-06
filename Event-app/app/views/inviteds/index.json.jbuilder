json.array!(@inviteds) do |invited|
  json.extract! invited, :id, :event_id, :user_id, :correo
  json.url invited_url(invited, format: :json)
end
