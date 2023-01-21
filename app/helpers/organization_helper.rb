module OrganizationHelper
  # Home: :org_slug
  # People: :org_slug/people
  # Services: :org_slug/services
  # Visits: :org_slug/visits
  def organization_navigation
    [
      { name: 'Home', path: organization_path(@org) },
      { name: 'People', path: organization_people_path(@org) },
      { name: 'Services', path: organization_services_path(@org) },
      { name: 'Visits', path: organization_visits_path(@org) }
    ]
  end
end
