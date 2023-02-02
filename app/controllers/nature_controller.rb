class NatureController < ApplicationController
  def index
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("nature/*.jpeg")
    end
  end
end