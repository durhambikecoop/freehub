class Organizations::Reports::PeopleController < OrganizationController
  include Pagination

  before_action :set_page_title
  before_action :set_people

  def index
    @people, @pagination = paginate(@people)
  end

  def export() end

  private

  def set_people
    @people = @org.people
    
    if params[:name].present?
      @people = @people.where(
        'CONCAT(LOWER(first_name),\' \', LOWER(last_name)) LIKE ?',
        "%#{params[:name].downcase}%"
      )
    end

    if params[:created_at_gte].present?
      @people = @people.where(
        'created_at >= ?',
        params[:created_at_gte]
      )
    end

    if params[:created_at_lte].present?
      @people = @people.where(
        'created_at <= ?',
        params[:created_at_lte]
      )
    end
  end

  def set_page_title
    @page_title = "People Report"
  end
end
