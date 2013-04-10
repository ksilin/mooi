class StaticPagesController < ApplicationController
  def home
    @title = "Welcome"
  end

  def help
  @title = "Help"
  end

  def about
    @title = "About this application"
  end
end
