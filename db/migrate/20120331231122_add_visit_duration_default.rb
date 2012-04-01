class AddVisitDurationDefault < ActiveRecord::Migration
  def self.up
    change_column :visits, :duration, :float, :default => 0
	Visit.all.each do |v|
	  if v.duration.nil?
	    v.update_attributes!(:duration => 0.0)
	  end
	end
  end

  def self.down
    change_column :visits, :duration, :float
  end
end
