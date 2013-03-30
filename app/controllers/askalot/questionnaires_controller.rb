require_dependency "askalot/application_controller"

module Askalot
  class QuestionnairesController < ApplicationController
    def run
      @questionnaire = Questionnaire.find(params[:id])
    end
  end
end
