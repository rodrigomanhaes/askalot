module Askalot
  module QuestionnairesHelper
    def option_id(option)
      question = option.question
      questionnaire = question.questionnaire
      "%s_%s_%s" % [questionnaire.id, question.id, option.id]
    end

    def option_tag(question, id)
      if question.multiple
        check_box_tag(id)
      else
        id =~ /^([0-9]+\_[0-9]+)\_([0-9]+)$/
        radio_button_tag($1, $2)
      end
    end
  end
end
