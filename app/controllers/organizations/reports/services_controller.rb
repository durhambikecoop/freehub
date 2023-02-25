require 'exports/services_export'

class Organizations::Reports::ServicesController < OrganizationController
  include Pagination
  before_action :set_page_title
  before_action :set_services

  def index
    @services, @pagination = paginate(@services)
  end

  def export
    respond_to do |format|
      format.csv do
        send_data Exports::ServicesExport.new(@services).to_csv, filename: "#{@org.slug}-services-export.csv"
      end
    end
  end

  private

  def set_services
    @services = @org.services
  end

  def set_page_title
    @page_title = "Services Report"
  end
end
