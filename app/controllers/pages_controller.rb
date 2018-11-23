class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def show
    @condition_reports = current_user.condition_reports
  end

  def kitchensink
  end

  def confirmation
  end
end
