module OldFreehubData
  # == Schema Information
  #
  # Table name: notes
  #
  #  id            :integer(4)      not null, primary key
  #  text          :text
  #  notable_id    :integer(4)
  #  notable_type  :string(255)
  #  created_by_id :integer(4)
  #  updated_by_id :integer(4)
  #  created_at    :datetime
  #  updated_at    :datetime
  #
  class Note < OldFreehubData::ApplicationRecord
  end
end
