class Person < ApplicationRecord
  belongs_to :organization
  belongs_to :created_by, class_name: 'User', foreign_key: 'created_by_user_id'
  belongs_to :updated_by, class_name: 'User', foreign_key: 'updated_by_user_id'
  has_many :people_notes, dependent: :destroy
  has_many :notes, through: :people_notes, dependent: :destroy
end
