json.extract! newspaper, :id, :header, :body, :link, :category_id, :created_at, :updated_at
json.url newspaper_url(newspaper, format: :json)
