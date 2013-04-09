module Askalot
  class Question < ActiveRecord::Base
    belongs_to :questionnaire
    has_many :options
    attr_accessible :text

    def multiple?
      kind == 'multiple'
    end

    def open_ended?
      kind == 'open_ended'
    end
  end
end
