class Organizations::Reports::VisitsController < OrganizationController
  before_action :set_page_title

  def index
    @visits = @org.visits
  end

  def export() end

  private

  def set_page_title
    @page_title = "Visits Report"
  end
end
