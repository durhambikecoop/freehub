class Organizations::Reports::ServicesController < OrganizationController
  include Pagination
  before_action :set_page_title
  before_action :set_services

  def index
    @services, @pagination = paginate(@services)
  end

  def export() end

  private

  def set_services
    @services = @org.services
  end

  def set_page_title
    @page_title = "Services Report"
  end
end
