class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :confirmation]

  def home
  end

  def entry
    @condition_reports = current_user.condition_reports
  end

  def kitchensink
  end

  def confirmation
  end
end
