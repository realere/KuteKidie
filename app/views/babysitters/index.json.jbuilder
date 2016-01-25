json.array!(@babysitters) do |babysitter|
  json.extract! babysitter, :id, :name, :no_of_children, :phone_number, :email, :location, :rating, :about_me, :user_id
  json.url babysitter_url(babysitter, format: :json)
end
