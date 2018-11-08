class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home], raise: false


  def home
  end
  layout "another_layout"
end
