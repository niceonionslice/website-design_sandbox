class StaticPagesController < ApplicationController
  def home
    render :home, layout: nil
  end

  def help
  end
end
