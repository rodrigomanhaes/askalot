require_dependency "askalot/application_controller"

module Askalot
  class AnswersController < ApplicationController
    before_filter :load_questionnaire

    def new
    end

    def create
      @answer = Answer.new
      @answer.questionnaire = @questionnaire
      @answer.items = params.keys.grep(/^[0-9]+\_[0-9]+\_[0-9]+$/).
        map {|s| s.split('_').last }.
        map {|id| item = AnswerItem.new; item.option_id = id; item }
      @answer.save
      redirect_to [@questionnaire, @answer]
    end

    def show
      @answer = Answer.find(params[:id])
    end

    private

    def load_questionnaire
      @questionnaire = Questionnaire.find(params[:questionnaire_id])
    end
  end
end
