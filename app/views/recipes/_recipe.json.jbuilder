json.extract! recipe, :id, :recipe_name, :recipe_time, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
