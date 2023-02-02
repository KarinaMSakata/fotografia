class CoupleController < ApplicationController
  def index
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("couple/*.jpeg")
    end
  end
end