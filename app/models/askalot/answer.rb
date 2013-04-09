module Askalot
  class Answer < ActiveRecord::Base
    belongs_to :questionnaire
    has_many :items, class_name: 'AnswerItem'

    validate :ensure_items_cardinality_matches_question_constraints

    private

    def ensure_items_cardinality_matches_question_constraints
      if items.group_by {|i| i.option.question }.
        any? {|pair| !pair[0].multiple? && pair[1].size > 1 }
        errors.add(:items, "doesn't match question cardinality")
      end
    end
  end
end
