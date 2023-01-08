class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :paid
      t.boolean :volunteered
      t.string :service_type
      t.references :note, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.references :created_by_user, null: false, foreign_key: { to_table: :users }
      t.references :updated_by_user, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
