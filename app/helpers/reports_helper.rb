module ReportsHelper
  def person_columns
    [
      { name: 'Name', value: -> (person) { person.full_name } },
      { name: 'Staff', value: -> (person) { 'STAFF TODO' } },
      { name: 'Email', value: -> (person) { person.email } },
      { name: 'Phone', value: -> (person) { person.phone } },
      { name: 'City', value: -> (person) { 'TODO CITY' } },
      { name: 'State', value: -> (person) { 'TODO STATE' } },
      { name: 'Zip', value: -> (person) { 'TODO ZIP' } },
      { name: 'Created', value: -> (person) { person.created_at } }
    ]
  end

  def service_columns
    [
      { name: 'Name', value: -> (service) { service.person.full_name } },
      { name: 'Service type', value: -> (service) { service.service_type } },
      { name: 'Start date', value: -> (service) { service.start_date } },
      { name: 'End date', value: -> (service) { service.end_date } },
      { name: 'Paid', value: -> (service) { service.paid? } },
      { name: 'Volunteered', value: -> (service) { service.volunteered? } },
      { name: 'Note', value: -> (service) { service.note&.body } }
    ]
  end

  def visit_columns
    [
      { name: 'Name', value: -> (visit) { visit.person.full_name } },
      { name: 'Type', value: -> (visit) { 'TODO TYPE' } },
      { name: 'Volunteered', value: -> (visit) { visit.volunteer? ? 'Yes' : 'No' } },
      { name: 'Arrived', value: -> (visit) { visit.arrived_at } },
      { name: 'In', value: -> (visit) { visit.start_at } },
      { name: 'Out', value: -> (visit) { visit.end_at } },
      { name: 'Note', value: -> (visit) { visit.note&.body } }
    ]
  end
end
