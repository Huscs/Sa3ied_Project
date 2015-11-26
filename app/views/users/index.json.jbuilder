json.array!(@users) do |user|
  json.extract! user, :id, :uname, :email
  json.url user_url(user, format: :json)
end
