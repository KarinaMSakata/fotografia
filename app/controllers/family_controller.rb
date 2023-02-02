class FamilyController < ApplicationController
  def index
    @images = Dir.chdir(Rails.root.join('app/assets/images')) do
      Dir.glob("family/*.jpeg")
    end
  end
end