json.array!(@childminders) do |childminder|
  json.extract! childminder, :id, :name, :no_of_children, :phone_number, :email, :location, :rating, :about_me
  json.url childminder_url(childminder, format: :json)
end
