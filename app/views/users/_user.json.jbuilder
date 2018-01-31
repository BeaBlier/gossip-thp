json.extract! user, :id, :anonymous_author, :content, :created_at, :updated_at
json.url user_url(user, format: :json)
