require 'spec_helper'

module Askalot
  describe Answer do
    it 'is invalid when have multiple items for a non-multiple question' do
      question = stub_model(Question, multiple: false)
      option1, option2 = 2.times.map { stub_model(Option, question: question) }
      answer = Answer.new
      answer.items << stub_model(AnswerItem, option: option1)
      answer.items << stub_model(AnswerItem, option: option2)
      answer.should_not be_valid
      answer.errors[:items].should be_any

      answer.items.pop
      answer.should be_valid
    end
  end
end
