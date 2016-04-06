json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :date_i, :date_f, :hour_i, :hour_f, :name_place, :address, :img, :private, :n_confirm, :capacity, :need_partner, :des_partner, :user_id
  json.url event_url(event, format: :json)
end
