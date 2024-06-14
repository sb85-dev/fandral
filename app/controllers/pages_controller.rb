class PagesController < ApplicationController
  def index
    @alerts = Alert.includes(:member).all
  end
end
