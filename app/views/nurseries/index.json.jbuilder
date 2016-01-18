json.array!(@nurseries) do |nurseries|
  json.extract! nurseries, :id, :name, :age_group, :no_of_staff, :phone_number, :email, :location, :rating, :available_space, :about_us
  json.url nurseries_url(nurseries, format: :json)
end
