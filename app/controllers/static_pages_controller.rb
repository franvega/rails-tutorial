# Static Pages Controller
class StaticPagesController < ApplicationController
  def home
    @users = [{:nombre => 'Manolo'}]
  end

  def help
  end

  def about
  end
end
