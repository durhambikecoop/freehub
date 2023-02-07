# frozen_string_literal: true

class Organizations::Reports::TableComponent < ViewComponent::Base
  renders_many :filters, types: {
    text: Organizations::Reports::Table::TextFilterComponent,
    date_range: Organizations::Reports::Table::DateRangeFilterComponent,
    choice: Organizations::Reports::Table::ChoiceFilterComponent
  }

  def initialize(collection:, columns:)
    @collection = collection
    @columns = columns
  end
end
