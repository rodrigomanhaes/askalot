require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the QuestionnairesHelper. For example:
#
# describe QuestionnairesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
module Askalot
  describe QuestionnairesHelper do
    it 'generates id for option fields using questionnaire, question and option ids' do
      questionnaire = stub_model(Questionnaire, id: 11)
      question = stub_model(Question, id: 22, questionnaire: questionnaire)
      option = stub_model(Option, id: 33, question: question)
      helper.option_id(option).should == '11_22_33'
    end
  end
end
