class Organizations::Reports::ServicesController < OrganizationController
  before_action :set_page_title

  def index
    @services = @org.services
  end

  def export() end

  private

  def set_page_title
    @page_title = "Services Report"
  end
end
