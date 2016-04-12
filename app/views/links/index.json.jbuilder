json.array!(@links) do |link|
  json.extract! link, :id, :title, :url, :description, :user_id
  json.url link_url(link, format: :json)
end
