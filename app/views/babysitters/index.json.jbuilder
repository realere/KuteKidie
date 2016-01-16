json.array!(@babysitters) do |babysitter|
  json.extract! babysitter, :id, :name, :phone, :email, :location, :about_me, :user_id
  json.url babysitter_url(babysitter, format: :json)
end
