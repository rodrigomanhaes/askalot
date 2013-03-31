require 'spec_helper'

module Askalot
  describe QuestionnairesHelper do
    it 'generates id for option fields using questionnaire, question and option ids' do
      questionnaire = stub_model(Questionnaire, id: 11)
      question = stub_model(Question, id: 22, questionnaire: questionnaire)
      option = stub_model(Option, id: 33, question: question)
      helper.option_id(option).should == '11_22_33'
    end

    it 'returns "check_box_tag" and "radio_button_tag", depending on question type' do
      helper.option_tag(stub_model(Question, multiple: true), '1_2_3').should \
        == '<input id="1_2_3" name="1_2_3" type="checkbox" value="1" />'
      helper.option_tag(stub_model(Question, multiple: false), '1_2_3').should \
        == '<input id="1_2_3" name="1_2" type="radio" value="3" />'
    end
  end
end
