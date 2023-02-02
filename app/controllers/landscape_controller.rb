class LandscapeController < ApplicationController
  def index
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("landscape/*.jpeg")
    end
  end
end