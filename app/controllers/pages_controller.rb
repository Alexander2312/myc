class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def show

  end

  def kitchensink
  end

  def confirmation


  end
end
