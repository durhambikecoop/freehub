json.extract! person, :id, :full_name, :country, :address, :email, :email_opt_out, :phone, :organization_id, :created_at, :updated_at
json.url person_url(person, format: :json)
