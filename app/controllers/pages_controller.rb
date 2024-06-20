class PagesController < ApplicationController
    ALERTS_PER_PAGE = 25
  def index
    @page = params.fetch(:page,0).to_i
    @alerts = Alert.includes(:member).offset(@page*ALERTS_PER_PAGE).limit(ALERTS_PER_PAGE)
  end
  def user_assigned
    @user = current_user
    @page = params.fetch(:page,0).to_i
    @alerts = Alert.includes(:member).offset(@page*ALERTS_PER_PAGE).limit(ALERTS_PER_PAGE)
  end
end
