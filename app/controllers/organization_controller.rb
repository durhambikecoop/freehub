class OrganizationController < ApplicationController
  before_action :set_organization

  private

  def set_organization
    @org = Organization.find_by_slug(params[:organization_id])
  
    # If the org doesn't exist, redirect to a 404 page
    #   * This is a security measure to prevent users from
    #     guessing org slugs and accessing org data

    raise ActionController::RoutingError, 'Not Found' unless @org
  end
end
