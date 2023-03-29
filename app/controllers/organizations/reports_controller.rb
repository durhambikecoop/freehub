class Organizations::ReportsController < OrganizationController
  before_action :set_page_title

  def index() end

  private

  def set_page_title
    @page_title = "Reports"
  end
end