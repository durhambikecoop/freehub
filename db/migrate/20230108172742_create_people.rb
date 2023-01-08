class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.text :first_name, null: false
      t.text :last_name, null: false
      t.integer :birth_year, null: false
      t.text :country, null: false
      t.jsonb :address, null: false, default: {}
      t.text :email, null: false
      t.text :phone, null: false
      t.boolean :email_opt_out, null: false, default: false
      t.references :organization, null: false, foreign_key: true
      t.references :created_by_user, null: false, foreign_key: { to_table: :users }
      t.references :updated_by_user, null: false, foreign_key: { to_table: :users }

      t.index %i[email organization_id], unique: true
      t.index %i[phone organization_id], unique: true

      # Validate that the country is a valid 3166 country code (alpha 2)
      t.check_constraint "country ~* '^[A-Z]{2}$'", name: 'valid_country'

      # Validate that the birth year is a valid year
      t.check_constraint "birth_year >= 1920 AND birth_year <= date_part('year', now())", name: 'valid_birth_year'

      t.timestamps
    end
  end
end
