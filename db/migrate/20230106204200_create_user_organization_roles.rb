class CreateUserOrganizationRoles < ActiveRecord::Migration[7.0]
  def change
    create_enum :role, %w[manager member client]
    create_table :user_organization_roles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :organization, null: false, foreign_key: true
      t.enum :role, enum_type: :role, null: false

      # A user can only have one role per org
      t.index %i[user_id organization_id], unique: true

      t.timestamps null: false
    end
  end
end
