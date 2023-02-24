class Organizations::Reports::VisitsController < OrganizationController
  include Pagination

  before_action :set_page_title
  before_action :set_visits

  def index
    @visits, @pagination = paginate(@visits)
  end

  def export() end

  private

  def set_visits
    @visits = @org.visits
  end

  def set_page_title
    @page_title = "Visits Report"
  end
end
