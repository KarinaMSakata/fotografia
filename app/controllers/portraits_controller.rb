class PortraitsController < ApplicationController
  def index
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("portraits/*.jpeg")
    end
  end
end