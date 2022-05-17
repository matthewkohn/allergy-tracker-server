require_relative "application_controller"

class AllergiesController < ApplicationController
  get '/allergies' do
    allergies = Allergy.all
    allergies.to_json(only: [:id, :name])
  end

  post '/allergies' do
    allergy = Allergy.create(name: params[:name])
    
    allergy.to_json
  end

  delete '/allergies/:id' do
    allergy = Allergy.find(params[:id])
    allergy.destroy
    allergy.to_json
  end

end