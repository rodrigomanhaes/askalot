module Askalot
  class Answer < ActiveRecord::Base
    belongs_to :questionnaire
    has_many :items, class_name: 'AnswerItem'
  end
end
