class Organizations::Reports::PeopleController < OrganizationController
  before_action :set_page_title

  def index() end

  def export() end

  private

  def set_page_title
    @page_title = "People Report"
  end
end
