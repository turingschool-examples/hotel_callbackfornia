class ProtectedController < ApplicationController
  before_action :current_guest?

  def current_guest?
    redirect_to root_path unless current_guest
  end
end
