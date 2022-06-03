require_relative "application_controller"

class AllergiesController < ApplicationController

  get '/allergies' do
    allergies = Allergy.all
    allergies.to_json(
      only: [:id, :name], 
        include: :ingredients
    )
  end

end