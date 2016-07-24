json.extract! cartoon, :id, :cartoon_url, :rating, :views, :category_id, :created_at, :updated_at
json.url cartoon_url(cartoon, format: :json)