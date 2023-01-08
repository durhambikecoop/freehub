class PersonNote < ApplicationRecord
  belongs_to :person
  belongs_to :note
end
