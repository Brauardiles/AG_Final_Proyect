json.extract! client, :id, :rut, :institution, :region, :city, :state, :adress, :email, :phone, :created_at, :updated_at
json.url client_url(client, format: :json)
