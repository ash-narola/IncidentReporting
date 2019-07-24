class Managers::MembersController < ApplicationController
  def index
    @members = Member.all.includes(:team)
  end
end
