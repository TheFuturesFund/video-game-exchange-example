json.extract! listing, :id, :name, :description, :contact_info, :image, :created_at, :updated_at
json.url listing_url(listing, format: :json)
