module Askalot
  module QuestionnairesHelper
    def option_id(option)
      question = option.question
      questionnaire = question.questionnaire
      "%s_%s_%s" % [questionnaire.id, question.id, option.id]
    end
  end
end
