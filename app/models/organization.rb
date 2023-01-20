class Organization < ApplicationRecord
  has_many :people, dependent: :destroy
  has_many :user_organization_roles, dependent: :destroy
  has_many :users, through: :user_organization_roles
  has_many :visits, dependent: :destroy
  has_many :services, dependent: :destroy
end
