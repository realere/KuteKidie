json.array!(@nannies) do |nanny|
  json.extract! nanny, :id, :name, :age, :no_of_children, :phone_number, :email, :location, :rating, :about_me, :category_id
  json.url nanny_url(nanny, format: :json)
end
