class StartEndAtSetting < ActiveRecord::Migration
  def self.up
    add_column :organizations, :display_start_end, :boolean
  end

  def self.down
    remove_column :organizations, :display_start_end
  end
end
