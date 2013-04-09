require 'spec_helper'

module Askalot
  describe QuestionnairesHelper do
    describe 'option_id' do
      it 'generates id for option fields' do
        questionnaire = stub_model(Questionnaire, id: 11)
        question = stub_model(Question, id: 22, questionnaire: questionnaire)
        option = stub_model(Option, id: 33, question: question)
        helper.option_id(option).should == '11_22_33'
      end
    end

    describe 'option_tag' do
      it 'returns tags for radio or checkbox, depending on question type' do
        helper.option_tag(stub_model(Question, multiple?: true), '1_2_3').should\
          == '<input id="1_2_3" name="1_2_3" type="checkbox" value="1" />'
        helper.option_tag(stub_model(Question, multiple?: false), '1_2_3').should\
          == '<input id="1_2_3" name="1_2" type="radio" value="3" />'
      end
    end

    describe 'question_id' do
      it 'returns unique id for question elements' do
        helper.question_id(stub_model(Question, id: 1)).should == 'question_1'
      end
    end

    describe 'test_answer_tag' do
      it 'returns appropriate tag for text answers' do
        helper.text_answer_tag(stub_model(Question, id: 1)).should == \
          "<textarea id='question_1' />"
      end
    end
  end
end
