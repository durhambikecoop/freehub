class Service < ApplicationRecord
  belongs_to :note
  belongs_to :person
end
