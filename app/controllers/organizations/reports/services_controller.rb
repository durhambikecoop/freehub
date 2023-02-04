class Organizations::Reports::ServicesController < OrganizationController
  before_action :set_page_title

  def index() end

  def export() end

  private

  def set_page_title
    @page_title = "Services Report"
  end
end
