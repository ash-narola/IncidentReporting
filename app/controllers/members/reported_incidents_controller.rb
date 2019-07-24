class Members::ReportedIncidentsController < ApplicationController
  before_action :authenticate_member!
  def index
    @reported_incidents = current_member.incidents_reported
  end
end
