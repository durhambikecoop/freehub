# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#

# Populate the DBC Tags
Tag.create(:id => 1, :name => 'board member')
Tag.create(:id => 2, :name => 'core volunteer')
Tag.create(:id => 3, :name => 'key holder')
Tag.create(:id => 5, :name => 'experienced mechanic')
Tag.create(:id => 10, :name => 'clean energy durham clinic participant')
Tag.create(:id => 14, :name => 'banned')
Tag.create(:id => 16, :name => 'youth program participant')
Tag.create(:id => 24, :name => 'deaf')
Tag.create(:id => 25, :name => 'trained greeter')
